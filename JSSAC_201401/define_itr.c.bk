/* define_itr.c */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#ifndef max
#define max(a,b) (((a)>(b))?(a):(b))
#endif
#ifndef min
#define min(a,b) (((a)<(b))?(a):(b))
#endif
#define LEN 1024

struct options {
	int help;
	int stat;
	int check;
	float on;
	float off;
};

void help(void){
	printf("USAGE:\n");
	printf(" define_itr [-h] [-s] [-c] on=<v1> off=<v2>\n");
	printf("  -h : help.\n");
	printf("  -s : stat.\n");
	printf("  -c : check args.\n");
	printf("  v1 : set real.\n");
	printf("  v2 : set real.\n");
}

void status(void){
	printf("STATUS:\n");
	printf(" under construction.\n");
}

struct options *alloc_options(void){
	struct options *p;
	if((p = malloc(sizeof(struct options) * 1)) == NULL){
		printf("failed : malloc() in alloc_options().\n");
		exit(1);
	}
	/*
	if(((*p).argstr = malloc(sizeof(char) * LEN)) == NULL){
		printf("failed : malloc() in alloc_options().\n");
		exit(1);
	}
	*/
	return(p);
}

void init_options(struct options *opt){
	(*opt).help = 0;
	(*opt).stat = 0;
	(*opt).check = 0;
	(*opt).on = 0.01;
	(*opt).off = 0.01;
}

void get_options(int optc, char **optv, struct options *opt){
	int i = 0;
	for(i=0;i<optc;i++){
		if(strcmp(optv[i],"-h") == 0){
			(*opt).help = 1;
		}else if(strcmp(optv[i],"-s") == 0){
			(*opt).stat = 1;
		}else if(strcmp(optv[i],"-c") == 0){
			(*opt).check = 1;
		}else if(strncmp(optv[i],"on=",3) == 0){
			sscanf(optv[i],"on=%f",&(*opt).on);
		}else if(strncmp(optv[i],"off=",4) == 0){
			sscanf(optv[i],"off=%f",&(*opt).off);
		}
	}
}

void check_options(struct options *opt){
	printf("OPTIONS:\n");
	printf(" opt.on:%f:\n",(*opt).on);
	printf(" opt.off:%f:\n",(*opt).off);
}

int main(int argc, char **argv){
	int ie = 0;
	float itr_f = 0;
	int itr_i = 0;
	struct options *opt;
	opt = alloc_options();
	init_options(opt);
	get_options(argc-1, argv+1, opt);
	if((*opt).help == 1){
		help();
		ie = 1;
	}
	if((*opt).stat == 1){
		status();
		ie = 1;
	}
	if((*opt).check == 1){
		check_options(opt);
		ie = 1;
	}
	if(ie > 0){
		exit(0);
	}
	itr_f = 1 / ((*opt).on + (*opt).off);
	itr_i = (int)itr_f;
	printf("%d\n",itr_i);
	return(0);
}
