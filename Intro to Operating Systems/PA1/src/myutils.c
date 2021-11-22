/*test machine: csel-kh1260-15.cselabs.umn.edu
* group number: G[55]
* name: Isaac Blaine-Sauer , [Peter Ortiz]
* x500: BLAIN075 , [ORTIZ363] */ 
#include "myutils.h"
#include "utils.h"

void printArray(int arr[], int size) {
    int i;

    for (i = 0; i < size; i++)
        printf("%d ", arr[i]);
    printf("\n");
}

void writeSortedResultToFile(char* myID, int arr[], int size) {
    char line[WriteBufferSize];
    char filepath[MaxFileNameLength];
    memset(line, '\0', WriteBufferSize);
    memset(filepath, '\0', MaxFileNameLength);
    sprintf(filepath, "output/%s.out", myID);

    int i;
    int idx = 0;
    idx += sprintf(&line[idx], "%d\n", size);
    for (i = 0; i < size; i++) {
        idx += sprintf(&line[idx], "%d\n", arr[i]);
    }
    writeLineToFile(filepath, line);                // Write data in the write buffer to the file
}

void swap(int* a, int* b) { 
    int t = *a; 
    *a = *b; 
    *b = t; 
} 

int partition (int arr[], int low, int high) { 
    int pivot = arr[high];                          // pivot 
    int i = (low - 1);                              // Index of smaller element and indicates the right position of pivot found so far
  
    for (int j = low; j <= high - 1; j++) {        
        if (arr[j] < pivot) {                       // If current element is smaller than the pivot 
            i++;                                    // increment index of smaller element 
            swap(&arr[i], &arr[j]); 
        } 
    } 

    swap(&arr[i + 1], &arr[high]); 
    return (i + 1); 
} 
  
void quickSort(int arr[], int low, int high) { 
    if (low < high) {
        int pi = partition(arr, low, high); 
        quickSort(arr, low, pi - 1); 
        quickSort(arr, pi + 1, high); 
    } 
} 

// TODO: Multiway Merge Sort with multiple data streams from intermediate files
void merge(char* myID, int depth, int nChild) {
    // printf("Got here\n");
    // printf("myID: %s", myID);
    if (nChild > 0) {
        char* addition = (char*)malloc(1);
        char** filenames = (char**)malloc(nChild * MaxFileNameLength);
        FILE** inputFiles = (FILE**)malloc(sizeof(FILE*) * (nChild-1));                          
        for (int i = 0; i < nChild; i++) {
            filenames[i] = (char*)malloc(MaxFileNameLength);
            sprintf(addition, "%d", i+1);
            // if (myID == "") {
            //     sprintf(filenames[i], "%s.out", addition);
            //     printf("filename[i]: %s\n\n", filenames[i]);
            // } else {
                sprintf(filenames[i], "%s%s.out", myID, addition);
            // }
            // printf("Filename: %s\n", filenames[i]);
            inputFiles[i] = (FILE*)malloc(sizeof(FILE*));
            char* temp = (char*)malloc(MaxFileNameLength);
            // printf("Filename: %s\n", filenames[i]);
            sprintf(temp, "output/%s", filenames[i]);
            filenames[i] = temp;
            // printf("Filename: %s\n", filenames[i]);
            if ((inputFiles[i] = getFilePointer(filenames[i])) == NULL) {             // Open a file and return file pointer to the file
                    exit(EXIT_FAILURE);
            }
            free(temp);
        }
        // printf("Got here as well\n");
        
        char *line = (char *)malloc(sizeof(char) * LineBufferSize);         // Line buffer where a new line is stored
        size_t len = LineBufferSize;                                        // The size of the line buffer
        ssize_t nread;                                                  // Length of a new line read

        // printf("Probably didnt get here\n");
        
        int *mins = (int*)malloc(nChild*sizeof(int));
        int min;
        int iter = 0;
        char* temp = (char*)malloc(8);
        int cont = 1;
        int minPos;
        int *finalArray = (int*)malloc(MaxDataSize*sizeof(int));
        for(int i = 0; i < nChild; i++) {
            for(int y = 0; y < 2; y++) {
                if ((nread = getLineFromFile(inputFiles[i], line, len)) != -1) {
                        sscanf(line, "%s\n", temp);
                        mins[i] = atoi(temp);
                        // printf("Mins:[%d]: %d\n", i, mins[i]);
                }
            }
        }
        int asdf = 0;
        while (cont = 1) {
            min = mins[0];
            minPos = 0;
            for(int i = 0; i < nChild; i++) {
                if (mins[i] < min) {
                    min = mins[i];
                    minPos = i;
                }
            }
            if (min == 10001) {
               break;
            } else {
                finalArray[iter] = min;
                iter++;
                if ((nread = getLineFromFile(inputFiles[minPos], line, len)) != -1) {
                    sscanf(line, "%s\n", temp);
                    mins[minPos] = atoi(temp);
                } else {
                    mins[minPos] = 10001;
                }
            }
        }
        // printf("MY ID: %s", myID);
        if(myID == "") {
            char* master = (char*)malloc(7);
            master = "master";
            writeSortedResultToFile(master, finalArray, iter);
        } else {
            writeSortedResultToFile(myID, finalArray, iter);
        }
        printf("Process [%s] - Merge Sort - Done\n", myID);






        free(mins);
        free(line);
        free(filenames);
        free(inputFiles);
        free(finalArray);
    }
}
