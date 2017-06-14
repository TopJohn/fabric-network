#!/bin/bash

case $1 in
    1)  docker-compose -f membersrvc-vp0-vp1.yaml down
    ;;
    2)  docker-compose -f vp2-vp3.yaml down
    ;;
esac
