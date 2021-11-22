/*test machine: csel-kh1260-15.cselabs.umn.edu
* group number: G[55]
* name: Isaac Blaine-Sauer , [Peter Ortiz]
* x500: BLAIN075 , [ORTIZ363] */ 

#include "myutils.h"
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {

    if (argc < 2) {
        printf("Less number of arguments.\n");
        printf("./master InputFileName\n");
        fflush(stdout);
        exit(EXIT_FAILURE);
    }

    // Please keep this function call in the main.
    // This function initializes "output" folder
    // by deleting the folder and all its files,
    // and then creating a clean "output" folder.
    bookeepingCode();
    // Parse input file

    FILE * fp;                                                      // File pointer
    char *line = (char *)malloc(sizeof(char) * LineBufferSize);         // Line buffer where a new line is stored
    size_t len = LineBufferSize;                                        // The size of the line buffer
    ssize_t nread;    
                                                  // Length of a new line read
    char *inputFile = argv[1];

    char inputFileName[MaxFileNameLength];
    memset(inputFileName, '\0', MaxFileNameLength);
    sprintf(inputFileName, "input/%s", argv[1]);

    if ((fp = getFilePointer(inputFileName)) == NULL) {             // Open a file and return file pointer to the file
        exit(EXIT_FAILURE);
    }

    // Read the number of data and depth
    int nData;
    int depth = 0;
    int depthConst;
    if((nread = getLineFromFile(fp, line, len)) != -1) {            // Read next line and write it to line buffer
        sscanf(line, "%d %d\n", &nData, &depth);
    }
    depthConst = depth;
    // TODO: Read degrees of each level
    int *degrees;
    degrees = malloc(10*sizeof(int));
    if((nread = getLineFromFile(fp, line, len)) != -1) {
        sscanf(line, "%d %d %d %d %d %d %d %d %d\n", &degrees[0], &degrees[1], &degrees[2], &degrees[3], &degrees[4], &degrees[5], &degrees[6], &degrees[7], &degrees[8]);
    }
    degrees[9] = 0;
    
    // Read input data
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

    char parentStartIdx[256];
    char startString[256];
    char dataSizeStr[256];
    char endString[256];
    char degreeStr[256];
    char depthStr[256];
    char name[256];
    char * specialName = (char*)malloc(256);
    specialName = "master";
   
    int startIndex;
    int endIndex;
    int degreeIterator = 0;
    int assignedDataSize = 0;
    int curDataSize = nData;
    int * currData = (int *)malloc(sizeof(int) * assignedDataSize);
    int parentIDvar = 0;

    // // // Depth is 0, so we only need to QuickSort // // //
    if ((depth == 0 && nData == 0) || depth >= 10) {
        printf("ERROR: Depth is out of bounds\n");
        exit(EXIT_FAILURE);

    // // // Depth is 1, so we only need to create child processes from the parent process in master.c // // // 
    } else if ((depth == 0 && nData != 0) || (degrees[1] >= 10)){
        quickSort(input, 0, nData-1);
        writeSortedResultToFile(name, input, nData);

    } else if (depth == 1) {
        for (int i = 0; i < degrees[0]; i++) {
            if (degrees[0] > nData) {
                printf("ERROR: Number of data is than degrees\n");
                exit(EXIT_FAILURE);
            }
            int IDvariable = 1;
            currProcess = fork();
        
            if (currProcess > 0) {

            } else if (currProcess == 0) {
                IDvariable += i;
                sprintf(name, "%d", IDvariable);
                char *progName = "./childProgram";
                if ((i + 1) == degrees[degreeIterator]) { // Last child process
                    assignedDataSize = floor(curDataSize / degrees[degreeIterator]);
                    startIndex = i * assignedDataSize;
                    endIndex = curDataSize-1;
                    assignedDataSize = endIndex - startIndex + 1;

                } else { // Non-last child process
                    assignedDataSize = floor(curDataSize / degrees[degreeIterator]);
                    startIndex = i * assignedDataSize;
                    endIndex = ((i+1) * assignedDataSize) - 1;
                }

                int currDataIdx = 0;
                int strt = startIndex;
                for (currDataIdx; currDataIdx < assignedDataSize; currDataIdx++) {
                    currData[currDataIdx] = input[strt];
                    strt++;
                }
                
                quickSort(currData, 0, currDataIdx-1);

                sprintf(name, "%d", IDvariable);
                sprintf(startString, "%d", startIndex);    
                sprintf(endString, "%d", endIndex);
                sprintf(dataSizeStr, "%d", assignedDataSize);
                sprintf(degreeStr, "%d", degrees[degreeIterator]);

                writeSortedResultToFile(name, currData, currDataIdx);
                printf("Parent  [%s] - Spawn Child [%s, %s, %s, %s, %s]\n", specialName, "1", name, startString, endString, dataSizeStr);
                printf("hello\n");
                printf("Process [%s] - Quick Sort - Done\n", name);

            } else {

            }
        }
        pid_t terminated_pid;
        while((terminated_pid = wait(NULL)) > 0) {

        }

    // // // Depth is greater than 1, so we need to create initial processes from parent process // // // 
    // // // in master.c then create all following processes recursively in childProgram.c       // // //
    } else {
        // printf("Depth >1");
        for (int i = 0; i < degrees[0]; i++) {
            if (degrees[0] > nData) {
                printf("Error: Number of data GREATER than degrees");
                exit(EXIT_FAILURE);
            }
            int IDvariable = 1;
            currProcess = fork();
        
            if (currProcess > 0) {
                // printf("    Created a child process (pid: %d)\n", currProcess);

            } else if (currProcess == 0) {
                IDvariable += i;
                sprintf(name, "%d", IDvariable);
                char *progName = "./childProgram";
                if ((i + 1) == degrees[degreeIterator]) { // Last child process
                    assignedDataSize = floor(curDataSize / degrees[degreeIterator]);
                    startIndex = i * assignedDataSize;
                    endIndex = curDataSize-1;
                    assignedDataSize = endIndex - startIndex + 1;


                } else { // Non-last child process
                    assignedDataSize = floor(curDataSize / degrees[degreeIterator]);
                    startIndex = i * assignedDataSize;
                    endIndex = ((i+1) * assignedDataSize) - 1;

                }

                sprintf(name, "%d", IDvariable);
                sprintf(startString, "%d", startIndex);    
                sprintf(endString, "%d", endIndex);
                sprintf(dataSizeStr, "%d", assignedDataSize);
                sprintf(degreeStr, "%d", degrees[degreeIterator]);
                sprintf(parentStartIdx, "%d", startIndex);

                printf("Parent  [%s] - Spawn Child [%s, %s, %s, %s, %s]\n", specialName, "1", name, startString, endString, dataSizeStr);
                char *args[] = {progName, "1", name , startString, endString, dataSizeStr, inputFile, degreeStr, parentStartIdx, NULL};
                execvp(args[0], args);
                printf("Error executing execv()\n");
                exit(0);

            } else {
                // printf("Failure creating child process (error number: %d)\n", errno);
            }
        }
        pid_t terminated_pid;
        // merge(name, 1, degrees[degreeIterator]);
        while((terminated_pid = wait(NULL)) > 0) {
            // printf("Terminated a child process (pid: %d)\n", terminated_pid);
        }
    }
    
    merge("", 1, degrees[0]);
    free(degrees);
    free(input);
    return EXIT_SUCCESS;
}