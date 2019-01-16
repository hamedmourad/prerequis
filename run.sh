#!/bin/bash

STATUS=OK
ansible-playbook playbook.yml --user $1 -vvv 
res=$?
if [ ! $res -eq 0 ]
then
        STATUS="KO"
fi
echo "Status = ${STATUS}"
