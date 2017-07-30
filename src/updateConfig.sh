#!/bin/bash

nslookup RT-N56U | grep Address | awk -F ": " '{print $2}' | awk -F " " '{print "BalancerMember " $1}' > new5