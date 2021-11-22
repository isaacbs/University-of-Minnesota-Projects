#include "consumer.h"
#include <ctype.h>
#include <string.h>
#include <stdlib.h>

/**
 * parse lines from the queue, calculate balance change
 * and update to global array
 */
void parse(char line[]){
    int numberCount = 0;
    int ID;
    double transaction;
    
    // printf("\nParsing Line: %s", line);

    char delim[] = ",";
    pthread_mutex_lock(&mutex);
    char *ptr = strtok(line, delim);
    int findID = 0;
    int balanceIndex = 0;
    float totalSum = 0;
    while (ptr != NULL) {
        // Get customer ID
        if (findID == 0) {
            balanceIndex = atoi(ptr);
            // printf("\nBalance ID: %d\n", balanceIndex);
            ptr = strtok(NULL, delim);
        } else {
            // printf("\tTransaction: %f\n", atof(ptr));
            // Sum up transactions
            totalSum += atof(ptr);
            ptr = strtok(NULL, delim);
        }
        findID++;
    }

    // printf("\tBalance before adding balance change: %f\n", balance[balanceIndex]);
    // printf("\tTotal Sum: %f\n", totalSum);
    balance[balanceIndex] += totalSum;
    // printf("\tBalance after adding balance change: %f\n", balance[balanceIndex]);

    pthread_mutex_unlock(&mutex);
}

// Consumer function
void *consumer(void *arg){
    // Wait for item to be in queue then lock critical section
    char* stringToBeParsed = (char*)malloc(20000);
    char* error = (char*)malloc(5);
    int consumerID = *(int *) arg;
    int lineConCount = 0;
    error = "EOF";
    FILE *logFile;

    if (logOn) {
        // Opening the file 
        logFile = fopen("output/log.txt", "w");
        if (logFile == NULL) {
            fprintf(stderr, "ERROR: Failed to open file\n");
            exit(1);
        }
    }

    /* strcmp(sharedQueue->data, error) != 0 */
    while(strcmp(stringToBeParsed, error) != 0) {
        // Wait until item can be added to queue then lock critical section
        sem_wait(&queueLowerBound); 
        sem_wait(&mut); 

        strcpy(stringToBeParsed, sharedQueue->data);
        if(strcmp(stringToBeParsed, error) == 0) {
            sem_post(&mut); 
            sem_post(&queueUpperBound); 
            break;
        }
        dequeue(&sharedQueue, sharedQueue);
        if(logOn){
            fprintf(logFile, "consumer %d: line %d\n", consumerID, lineConCount++);
        }
        // Unlock critical section then signal to put an item in the queue
        sem_post(&mut); 
        sem_post(&queueUpperBound); 
        parse(stringToBeParsed); 


    }

    if (strcmp(stringToBeParsed, error) == 0) {
        sem_post(&queueUpperBound);
        if(logOn) {
            fprintf(logFile, "consumer %d: line -1\n", consumerID);
        }
        close(logFile);
        return NULL;
    } 

    printf("Should not get here\n");
    return NULL; 
}


