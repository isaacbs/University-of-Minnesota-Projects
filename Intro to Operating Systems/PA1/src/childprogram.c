/*test machine: csel-kh1260-15.cselabs.umn.edu
* group number: G[55]
* name: Isaac Blaine-Sauer , [Peter Ortiz]
* x500: BLAIN075 , [ORTIZ363] */ 

#include "myutils.h"
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc < 7) {
        printf("Less number of arguments.\n");
        printf("./childProgram myDepth myID startIdx endIdx myDataLen InputFileName degree\n");
        fflush(stdout);
        exit(EXIT_FAILURE);
    }
    
    int myDepth = strtol(argv[1], NULL, 10);
    int myID = strtol(argv[2], NULL, 10);
    char* strMyID = argv[2];
    int myStartIdx = strtol(argv[3], NULL, 10);
    int myEndIdx = strtol(argv[4], NULL, 10);
    int myDataLen = strtol(argv[5], NULL, 10);
    char* inputFile = argv[6];
    int myDegree = strtol(argv[7], NULL, 10);
    int myParentStartIdx = strtol(argv[8], NULL, 10);

    FILE * fp;                                                          // File pointer
    char *line = (char *)malloc(sizeof(char) * LineBufferSize);         // Line buffer where a new line is stored
    size_t len = LineBufferSize;                                        // The size of the line buffer
    ssize_t nread;                                                      // Length of a new line read

    char inputFileName[MaxFileNameLength];
    memset(inputFileName, '\0', MaxFileNameLength);
    sprintf(inputFileName, "input/%s", argv[6]);

    if ((fp = getFilePointer(inputFileName)) == NULL) {                 // Open a file and return file pointer to the file
        exit(EXIT_FAILURE);
    }

    int nData;
    int depth = 0;
    if((nread = getLineFromFile(fp, line, len)) != -1) {                // Read next line and write it to line buffer
        sscanf(line, "%d %d\n", &nData, &depth);
    }

    int *degrees;
    degrees = malloc(10*sizeof(int));
    if((nread = getLineFromFile(fp, line, len)) != -1) {
        sscanf(line, "%d %d %d %d %d %d %d %d %d\n", &degrees[0], &degrees[1], &degrees[2], &degrees[3], &degrees[4], &degrees[5], &degrees[6], &degrees[7], &degrees[8]);
    }
    degrees[9] = 0;

    int * input = (int *)malloc(sizeof(int) * nData);
    int aNumber;
    int idxInput = 0;
    while((nread = getLineFromFile(fp, line, len)) != -1) {
        sscanf(line, "%d\n", &aNumber);
        input[idxInput++] = aNumber;
    }
    free(line);
    fclose(fp);

    pid_t currProcess;

    char name[256];
    char startString[256];
    char endString[256];
    char dataSizeStr[256];
    char degreeStr[256];
    char depthStr[256];
    char parentStartIdx[256];
    int degreeIterator = myDepth;
    myDepth++;
    int assignedDataSize = 0;
    int IDvariable = (myID*10);
    int * currData = (int *)malloc(sizeof(int) * assignedDataSize); 

    for (int i = 0; i < degrees[degreeIterator]; i++) {
        currProcess = fork();
      
        if (currProcess > 0) {

        } else if (currProcess == 0) {
            IDvariable += (i + 1);

            if ((i + 1) == degrees[degreeIterator]) { // Last child process
                assignedDataSize = floor(myDataLen / degrees[degreeIterator]);
                myStartIdx = (i * assignedDataSize) + myParentStartIdx;
                myEndIdx = (myDataLen - 1) + myParentStartIdx;
                assignedDataSize = myEndIdx - myStartIdx + 1;

            } else { // Non-last child process
                assignedDataSize = floor(myDataLen / degrees[degreeIterator]);
                myStartIdx = (i * assignedDataSize) + myParentStartIdx;
                myEndIdx = (((i+1) * assignedDataSize) - 1) + myParentStartIdx;
            }

            if (degrees[degreeIterator+1] == 0 || degrees[degreeIterator+1] > nData || degrees[degreeIterator+1] >= 10) { // Leaf Node  
                int currDataIdx = 0;
                int strt = myStartIdx;
                for (currDataIdx; currDataIdx < assignedDataSize; currDataIdx++) {
                    currData[currDataIdx] = input[strt];
                    strt++;
                }
                quickSort(currData, 0, currDataIdx-1);
                sprintf(name, "%d", IDvariable);
                sprintf(startString, "%d", myStartIdx);    
                sprintf(endString, "%d", myEndIdx);
                sprintf(dataSizeStr, "%d", assignedDataSize);
                sprintf(depthStr, "%d", myDepth);
                sprintf(degreeStr, "%d", degrees[degreeIterator]);
                sprintf(parentStartIdx, "%d", myParentStartIdx);

                writeSortedResultToFile(name, currData, currDataIdx);
                printf("Parent  [%s] - Spawn Child [%s, %s, %s, %s, %s]\n", argv[2], depthStr, name, startString, endString, dataSizeStr);
                printf("Process [%s] - Quick Sort - Done\n", name);
                // return 1;
                exit(0);
            } 

            sprintf(name, "%d", IDvariable);
            char *progName = "./childProgram";
            sprintf(startString, "%d", myStartIdx);    
            sprintf(endString, "%d", myEndIdx);
            sprintf(dataSizeStr, "%d", assignedDataSize);
            sprintf(depthStr, "%d", myDepth);
            sprintf(degreeStr, "%d", degrees[degreeIterator]);
            sprintf(parentStartIdx, "%d", myParentStartIdx);

            printf("Parent  [%s] - Spawn Child [%s, %s, %s, %s, %s]\n", argv[2], depthStr, name, startString, endString, dataSizeStr);
            char *args[] = {progName, depthStr, name, startString, endString, dataSizeStr, inputFile, degreeStr, startString, NULL};
            execvp(args[0], args);
            printf("Error executing execv()\n");
            exit(0);

        } else {
            // printf("Failure creating child process (error number: %d)\n", errno);
        }
    }
    pid_t terminated_pid;
    while((terminated_pid = wait(NULL)) > 0) {
        // printf("Terminated a child process (pid: %d)\n", terminated_pid);
    }
    merge(argv[2], myDepth, degrees[degreeIterator]);
    free(degrees);
    free(input);
    return EXIT_SUCCESS;
}

