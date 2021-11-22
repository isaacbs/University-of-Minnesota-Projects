#include "producer.h"
#include "utils.h"

#define QUEUE_STATUS 0


// Producer thread will read from the file and write data to the end of the shared queue
void *producer(void *arg){
    // Declare necessary variables 
    FILE *fp;
    FILE *logFile;
    int buffLength = 1024;
    char buffer[buffLength];
    char *path = (char *) arg;

    // Opening the file 
    fp = fopen(path, "r");
    if (fp == NULL) {
        fprintf(stderr, "ERROR: Failed to open file\n");
        exit(1);
    }

    if (logOn) {
        // Opening the file 
        logFile = fopen("output/log.txt", "w");
        if (logFile == NULL) {
            fprintf(stderr, "ERROR: Failed to open file\n");
            exit(1);
        }
    }



    int count = 0;
    // Read file line by line 
    while (fgets(buffer, buffLength, fp)) {
        // Wait until item can be added to queue then lock critical section
        sem_wait(&mut); 

        // Send data to shared queue
        append(&sharedQueue, buffer); 
        if(logOn) {
            fprintf(logFile, "producer: line %d\n", count);
        }
        //unlock critical section then signal that there is a new item in the queue
        sem_post(&mut); 
        sem_post(&queueLowerBound); 
        count++;
    }

    // Send EOF message when reaching the end of the file
    if (feof(fp)) {
        // printf("ERROR: Reached End Of File\n");
        
        // Wait until item can be added to queue then lock critical section
        
        for(int i = 0; i < NUM_CON_THREADS; i++) {
            sem_wait(&queueUpperBound);
            sem_wait(&mut);
            append(&sharedQueue, "EOF");
            if(logOn) {
                fprintf(logFile, "producer: -1\n"); 
            }
            sem_post(&mut);
            sem_post(&queueLowerBound);
        }

        // printf("shared queue->data %s\n", sharedQueue->data);

        //unlock critical section then signal that there is a new item in the queue
        
    }
    close(fp);
    close(logFile);
    // cleanup and exit
    return NULL; 
}
