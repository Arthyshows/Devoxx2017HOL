#!/bin/bash

# run 30 containers with SSH exposed on 220X
for i in {1..30}
do
  eval $(printf "sudo docker service create --name devoxx%02d -p 22%02d:22 jcorioland/devoxx2017attendee" $i $i)
done