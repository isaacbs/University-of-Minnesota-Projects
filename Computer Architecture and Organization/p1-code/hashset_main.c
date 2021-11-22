#include "hashset.h"
#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]){
	int echo = 0;
	if(argc > 1 && strcmp("-echo", argv[1])==0) {
		echo = 1;
	}
  	printf("Hashset Application\n");
  	printf("Commands:\n");
  	printf("  hashcode <item>  : prints out the numeric hash code for the given key (does not change the hash set)\n");
  	printf("  contains <item>  : prints the value associated with the given item or NOT PRESENT\n");
  	printf("  add <item>       : inserts the given item into the hash set, reports existing items\n");
  	printf("  print            : prints all items in the hash set in the order they were addded\n");
  	printf("  structure        : prints detailed structure of the hash set\n");
  	printf("  clear            : reinitializes hash set to be empty with default size\n");
  	printf("  save <file>      : writes the contents of the hash set to the given file\n");
  	printf("  load <file>      : clears the current hash set and loads the one in the given file\n");
  	printf("  next_prime <int> : if <int> is prime, prints it, otherwise finds the next prime and prints it\n");
  	printf("  expand           : expands memory size of hash set to reduce its load factor\n");
  	printf("  bye              : exit the program\n");

  	char inp[128];
  	hashset_t hs;
  	int worked;
  	hashset_init(&hs, HASHSET_DEFAULT_TABLE_SIZE);

  	while(1){
  		printf("HS|> ");
  		worked = fscanf(stdin, "%s", inp);
  		if (worked==EOF) {
  			printf("\n");
  			break;
  		}

  		if (strcmp("print", inp) == 0){ //implements the hashset_write_items_ordered function
  			if(echo){
  				printf("print\n");
  			}
  			hashset_write_items_ordered(&hs, stdout);
  		}
  		else if(strcmp("add", inp) == 0){ //implements the hashset_add function
  			fscanf(stdin, "%s", inp);
  			if(echo){
  				printf("add %s\n", inp);
  			}
  			worked = hashset_add(&hs, inp);
  			if (worked != 1){
  				printf("Item already present, no changes made\n");
  			}
  		}
  		else if (strcmp("structure", inp) == 0){ // implements the hashset_show_structure
  			if(echo){
  				printf("structure\n");
  			}
  			hashset_show_structure(&hs);
		}
		else if (strcmp("clear", inp) == 0){ //implements both the hashset_free_fields function as well as the hashset_init function
  			if(echo){
  				printf("clear\n");
  			}
  			hashset_free_fields(&hs);
  			hashset_init(&hs, HASHSET_DEFAULT_TABLE_SIZE);
  		}
  		else if (strcmp("save", inp) == 0){ //implements the hashset_save function
  			fscanf(stdin,"%s", inp);
  			if(echo){
  				printf("save %s\n", inp);
  			}
  			hashset_save(&hs, inp);
  		}
  		else if (strcmp("load", inp) == 0){ //implements the hashset_load function
  			fscanf(stdin,"%s", inp);
  			if(echo){
  				printf("load %s \n", inp);
  			}
  			worked = hashset_load(&hs, inp);
  			if (worked != 1) {
  				printf("load failed\n");
  			}
  		}
  		else if (strcmp("next_prime", inp) == 0){ //implements the next_prime function
  			int prime;
  			fscanf(stdin, "%d", &prime);
  			if(echo){
  				printf("next_prime %d\n", prime);
  			}
  			printf("%d\n", next_prime(prime));
		}
		else if (strcmp("expand", inp) == 0){ // implements the hashset_expand function
  			if(echo){
  				printf("expand\n");
  			}
  			hashset_expand(&hs);
		}
		else if (strcmp("hashcode", inp) == 0){ //implements the hashcode function
			fscanf(stdin,"%s", inp);
  			if(echo){
  				printf("hashcode %s\n", inp);
  			}
  			printf("%ld\n", hashcode(inp));
		}
		else if (strcmp("contains", inp) == 0){ //implements the hashset_contains function
			fscanf(stdin, "%s", inp);
  			if(echo){
  				printf("contains %s\n", inp);
  			}
  			worked = hashset_contains(&hs, inp);
  			if (worked == 1) {
  				printf("FOUND: %s\n", inp);
  			} else {
  				printf("NOT PRESENT\n");
  			}
		}
		else if (strcmp("bye", inp) == 0){ //implements the hashset_free_fields function
  			if(echo){
  				printf("bye\n");
  			}
  			hashset_free_fields(&hs);
  			return 0;
		}
		else{
			if(echo){
				printf("%s\n", inp);
			}
			printf("unknown command %s\n", inp);
		}	
}
hashset_free_fields(&hs);
}