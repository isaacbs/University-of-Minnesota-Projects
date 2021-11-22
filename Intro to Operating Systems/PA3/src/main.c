#include "header.h"
#include "utils.h"


#define NUM_PROD_THREADS 1

// Declaring necessary variables
struct Node *sharedQueue;
pthread_cond_t queueFull;
pthread_cond_t queueEmpty;
pthread_mutex_t mutex;
sem_t queueUpperBound;
sem_t queueLowerBound;
int count;
int NUM_CON_THREADS;
double balance[acctsNum];
sem_t mut;
int logOn;
int buffer;
int bufferSize;


// Write final balance to a single file 
// The path name should be output/result.txt
void writeBalanceToFiles(void) {
    FILE *fp;
    fp = fopen("output/result.txt", "w");
    char *charBalance[10000];
    char *index[255];
    float totalAmount = 0;
    char *total[255];
    for (int i = 0; i < 1000; i++) {
        sprintf(charBalance, "%.3f000", balance[i]);
        sprintf(index, "%d", i);
        fprintf(fp, index);
        fprintf(fp, "\t");
        fprintf(fp, charBalance);
        fprintf(fp, "\n");
        int temp = balance[i] * 10.0;
        // totalAmount += (double) (floor(balance[i]*10000.0)/10000.0);
        totalAmount += floor(temp/10.0);
        // printf("Char Balance: %s\n", charBalance);
        // printf("New Balance Values: %s\n", charBalance[i]);
    }

    fprintf(fp, "All: \t");
    sprintf(total, "%lf\n", totalAmount);
    fprintf(fp, total);
    fclose(fp);
}


int main(int argc, char *argv[]){
    // Check for correct number of arguments 

    if (argc == 3) {
        logOn = 0;
        buffer = 0;
    } else if (argc == 4) {
        logOn = 1;
        buffer = 0;
    } else if (argc == 5) {
        printf("hello %d\n", argc);
        printf("argv[3]= %s\n", argv[3]);
        if (strcmp(argv[3], "-b") == 0) {
            logOn = 0;
            buffer = 1;  
            bufferSize = atoi(argv[4]);
        } else {
            logOn = 1;
            buffer = 1;
            bufferSize = atoi(argv[4]);
        }
        
    } else {
        fprintf(stderr, "ERROR: Incorrect number of arguments\n");
        exit(EXIT_FAILURE);
    }

    bookeepingCode();

    // Initialize necessary variables 
    sharedQueue = NULL;
    pthread_mutex_init(&mutex, NULL);
    

    // Initialize number of producer and consumer threads
    NUM_CON_THREADS = strtol(argv[1], NULL, 10);

    pthread_t producerThread[NUM_PROD_THREADS];
    pthread_t consumerThread[NUM_CON_THREADS];

    if(buffer) {
        sem_init(&queueUpperBound, 0, bufferSize);
    } else {
        sem_init(&queueUpperBound, 0, 10000);
    }
    
    sem_init(&mut, 0, 1);
    sem_init(&queueLowerBound, 0, 0);


    int threadIterator;
    int argArr[NUM_CON_THREADS];

    char *filePath = argv[2];
    // printf("File Path: %s\n", filePath);
    FILE *logFile;
    FILE *resultFile;

    if (logOn) {
        // Opening the file 
        logFile = fopen("output/log.txt", "w");
        if (logFile == NULL) {
            fprintf(stderr, "ERROR: Failed to open file\n");
            exit(1);
        }
    }
    



    for (threadIterator = 0; threadIterator < NUM_CON_THREADS; threadIterator++) {
        argArr[threadIterator] = threadIterator;
    }

    // Creating producer thread 
    for (threadIterator = 0; threadIterator < NUM_PROD_THREADS; threadIterator++) {
        if (logOn) {
            fprintf(logFile, "producer\n");
        }
        if (pthread_create(&(producerThread[threadIterator]), NULL, producer, (void *) filePath) != 0) {
            fprintf(stderr, "ERROR: Failed to create Producer thread\n");
        }
    }

    // Creating consumer threads
    for (threadIterator = 0; threadIterator < NUM_CON_THREADS; threadIterator++) {
        if (logOn) {
            fprintf(logFile, "consumer %d\n", threadIterator);
        }
        if (pthread_create(&(consumerThread[threadIterator]), NULL, consumer, (void *) &argArr[threadIterator]) != 0) {
            fprintf(stderr, "ERROR: Failed to create Consumer thread\n");
        }
    }

    // Wait for all threads to complete execution
    for (threadIterator = 0; threadIterator < NUM_PROD_THREADS; threadIterator++) {
        pthread_join(producerThread[threadIterator], NULL);
    }
    for (threadIterator = 0; threadIterator < NUM_CON_THREADS; threadIterator++) {
        pthread_join(consumerThread[threadIterator], NULL);
    }
   
    // printf("Appending to queue\n");
    // append(&sharedQueue, "Peter");
    // append(&sharedQueue, "Andrew");
    // append(&sharedQueue, "Ortiz");

    // printList(sharedQueue);

    // printf("\n");

    // printf("Removing from queue\n");
    // dequeue(&sharedQueue, sharedQueue);
    // printList(sharedQueue);

    // printf("\n");

    // printf("Removing from queue\n");
    // dequeue(&sharedQueue, sharedQueue);
    // printList(sharedQueue);

    // printf("\n");

    // printf("Removing from queue\n");
    // dequeue(&sharedQueue, sharedQueue);
    // printList(sharedQueue);


    //Write the final output
    writeBalanceToFiles();
    
    return 0; 
}