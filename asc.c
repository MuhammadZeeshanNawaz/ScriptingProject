#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#include<unistd.h>
#include <stdio.h>

int main()                        
{    
int a[7],i,j;

for(i=0;i<7;i++){
printf("Enter Values");
scanf(" %d",&a[i]);

}

 for(i=0;i<7;i++)
    {
        printf(" %d",a[i]);
    }

    int pid = fork();
    if (pid == 0)
    {
        // child process
     
printf("\nchild  process\n");
printf("ID : %d\n",getpid());

     
for (int i = 0; i < 7; i++)                    
{
for (int j = 0; j < 7; j++)            
{
if (a[j] > a[i])                
{
int tmp = a[i];        
a[i] = a[j];            
a[j] = tmp;            
}  
}
}
printf("\nAscending : ");

                    //Printing message
for (int i = 0; i < 7; i++)                  
{
printf(" %d ", a[i]);
}

 }
printf("\n");
 if (pid > 0)
    {
        // parent process
     
printf("\nparent  process\n");
printf("ID : %d\n",getpid());

     
for (int i = 0; i < 7; i++)                    
{
for (int j = 0; j < 7; j++)            
{
if (a[j] > a[i])                
{
int tmp = a[i];        
a[i] = a[j];            
a[j] = tmp;            
}  
}
}
printf("\nAscending : ");

                    //Printing message
for (int i = 0; i < 7; i++)                  
{
printf(" %d ", a[i]);
}
}

printf("\n");

}
