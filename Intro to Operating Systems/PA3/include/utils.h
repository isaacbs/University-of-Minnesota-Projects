#ifndef UTILS_H
#define UTILS_H

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>
#include <stdbool.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <semaphore.h>
#include <math.h>

#define chunkSize 1024
#define acctsNum 1000

struct Node {
    char data[20000];
    struct Node *next;
    struct Node *prev;
};

/* shared array definition */
extern double balance[acctsNum];

/* Shared queue definition */
extern struct Node *sharedQueue;

/* Semaphore definitions */
extern pthread_cond_t queueFull;
extern pthread_cond_t queueEmpty;
extern pthread_mutex_t mutex;
extern int count;
extern int NUM_CON_THREADS;
extern sem_t queueUpperBound;
extern sem_t queueLowerBound;
extern sem_t mut;

/* Log file descriptor */
extern FILE logFile;
extern int lineConCount;
/* Log and Buffer global variables */
extern int logOn;
extern int buffer;
extern int bufferSize;

/* file I/O */
/**
 * Get a pointer to a opened file based on the file name
 * @param *inputFileName  the file path
 * @return a file pointer pointing to the file
 */
FILE * getFilePointer(char *inputFileName);

/**
 * Read an entire line from a file
 * @param  *fp    the file to be read
 * @param  *line  contain the line content
 * @param  len    the size of the line
 * @return the number of character reads (including the newline \n, but not including terminator)
           -1 when reaching the end of file or error occurs
 */
ssize_t getLineFromFile(FILE *fp, char *line, size_t len);

/**
 * Open a file, and write a line to the file
 * @param *filepath  the file path
 * @param *line      the line content
 */
void writeLineToFile(char *filepath, char *line);

/* directory */
void bookeepingCode();

/* other function declaration */

void append(struct Node** headRef, char *newData);

void dequeue(struct Node** headRef, struct Node* delete);

void printList(struct Node *node);

#endif
