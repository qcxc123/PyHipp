#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/AKeyPair.pem ec2-user@13.250.40.24 "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-1 --cluster-name MyCluster01; ~/update_snapshot.sh data 2 MyCluster01"
