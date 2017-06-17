#!/bin/bash

case $1 in
    1)  docker-compose -f membersrvc-4vp.yaml down
    ;;
    2)  docker-compose -f membersrvc-4vp-2nvp.yaml down
    ;;
esac