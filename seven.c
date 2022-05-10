#include<stdio.h>
#include <unistd.h>
int main()
{
int pid, pip[2],x,i;
char instring[30];
pipe(pip);
printf("Enter process you want to perform process 1 or 2 :");
scanf("%d",&x);
if(x>2||x==0){
printf("invalid input");}
else {
switch(x){
case 1:
pid=fork();
if (pid == 0)
/* child : sends message to parent*/
{
close(pip[0]); //read
/* send 7 characters in the string, including end-of-string */

write(pip[1], "1) hi parent! I am child\n",30); //write
printf("1) hello i am child \n");
}
else
/* parent : receives message from child */
{
close(pip[1]);
/* read from the pipe */
read(pip[0], instring,30);
printf("%s",instring);
printf("1) I am parent \n");
}
break;
case 2:
pid=fork();
if (pid > 0)
/* child : sends message to parent*/
{
close(pip[0]);
/* send 7 characters in the string, including end-of-string */
printf("2) hello i am parent\n");
write(pip[1], "\n2) Hi! child! I am parent",30);
}
else
/* parent : receives message from child */
{
close(pip[1]);
/* read from the pipe */
read(pip[0], instring,30);
printf("%s",instring);
printf("2) I am child\n");
}
break;

}
} 
}
