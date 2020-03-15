#!/bin/bash
#Description: script to clean up docker image
#Author: Emile Ken
#Date: March 2020

# Cleanup docker files: Images.


echo -e "\n\n =========== Starting the Docker Clean Up Script ================== \n\n"


for i in $(docker images | awk '{print $3}' | grep -v IMAGE);
do
docker rmi -f ${i}
done

echo -n "\n\n ============================ Clean Up Completed ============================= \n\n"



