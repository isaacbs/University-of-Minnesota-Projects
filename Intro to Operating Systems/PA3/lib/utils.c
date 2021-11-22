#include "utils.h"
// pthread.h included in header.h

// Feel free to add any functions or global variables

/* File operations */
void writeLineToFile(char *filepath, char *line) {
    int fd = open(filepath, O_CREAT | O_WRONLY | O_APPEND, 0777);
    if (fd < 0){
        printf("ERROR: Cannot open the file %s\n", filepath);
        fflush(stdout);
        exit(EXIT_FAILURE);
    }
    int ret = write(fd, line, strlen(line));
    if(ret < 0){
        printf("ERROR: Cannot write to file %s\n", filepath);
        fflush(stdout);
        exit(EXIT_FAILURE);
    }
}

FILE * getFilePointer(char *inputFileName) {
    return fopen(inputFileName, "r");
}

ssize_t getLineFromFile(FILE *fp, char *line, size_t len) {
    memset(line, '\0', len);
    return getline(&line, &len, fp);
}

void _removeOutputDir(){
    pid_t pid = fork();
    if(pid == 0){
        char *argv[] = {"rm", "-rf", "output", NULL};
        if (execvp(*argv, argv) < 0) {
            printf("ERROR: exec failed\n");
            exit(EXIT_FAILURE);
        }
        exit(EXIT_SUCCESS);
    } else{
        wait(NULL);
    }
}

void _createOutputDir(){
    mkdir("output", ACCESSPERMS);
}

void bookeepingCode(){
    _removeOutputDir();
    sleep(1);
    _createOutputDir();
}

/* other functions */

// Append node at the end of doubly linked list 
void append(struct Node** headRef, char* newData) {
    // Allocate node
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    struct Node* last = *headRef;

    // Set data
    strcpy(newNode->data, newData);

    // Since appending to end, the head will be NULL
    newNode->next = NULL;

    // If list is empty, newNode will be the head
    if (*headRef == NULL) {
        newNode->prev = NULL;
        *headRef = newNode;
        return;
    }

    // If list is not empty, traverse until last node
    while (last->next != NULL) {
        last = last->next;
    }

    // We have last node, so set newNode as the head
    last->next = newNode;

    // make "last" the tail of newNode
    newNode->prev = last;
    // curBufNumber += 1;
    return;
}

void dequeue(struct Node** headRef, struct Node* delete) {
    // Base case
    if (*headRef == NULL || delete == NULL) {

    }

    // Is node to be deleted the head node?
    if (*headRef == delete) {
        *headRef = delete->next;
    }

    // If node to be deleted is not the last node, change next
    if (delete->next != NULL) {
        delete->next->prev = delete->prev;
    }

    // If node to be deleted is not the first node, change prev
    if (delete->prev != NULL) {
        delete->prev->next = delete->next;
    }

    free(delete);
}

void printList(struct Node *node) {
    struct Node* last;
    while (node != NULL) {
        printf(" %s \n", node->data);
        last = node;
        node = node->next;
    }
}