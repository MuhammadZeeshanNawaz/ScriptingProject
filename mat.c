#include<stdio.h>
#include<pthread.h>
#include<unistd.h>



void * myFun(void * x)
 {
	
	sleep(20);
      	int tid = *((int *) x);
	 printf("hi from thread %d\n" ,tid);
	 return NULL;

 }

int main(int agrc , char *agrv[]) 
 {
	 pthread_t tid[5] ;
	 int a = 10;

	 for(int i = 0 ; i< 3 ; i++)

	 {
		 pthread_create(&tid[i],NULL,&myFun,(void *)&a);
 
        
 }

         for(int i =0 ; i<3 ; i++)
        {
	 pthread_join(tid[i],NULL);
         return 0;
	 }
 }


