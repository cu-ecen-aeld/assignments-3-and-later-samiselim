#include <syslog.h>
#include <stdio.h>
#include <stdlib.h>


int main(void)
{
    const char *filePath = "/home/sami/assignment-1-samiselim/writer.txt";
    const char * text = "Text";
    
    FILE *file = fopen(filePath , "w"); 
    if(file == NULL)
    {
        printf("Error Openning File");
        syslog(LOG_ERR , "Error Opening File at -> %s\n" , filePath);
        return 1;
    }
    fprintf(file , "%s",text);
    fclose(file);


    openlog("Writer" , LOG_CONS , LOG_USER);


    syslog(LOG_DEBUG,"Writing %s to %s\n" , text , filePath);
    
    closelog();
    return 1;
}

