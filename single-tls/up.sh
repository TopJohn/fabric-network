#!/bin/bash
membersrvc_log_level=DEBUG
peer_log_level=DEBUG

membersrvc_endpoint=membersrvc:7054
echo "Set MEMBERSRVC to "$membersrvc_endpoint

case $1 in
    1)  MEMBERSRVC=$membersrvc_endpoint MEMBERSRVC_LOGGING=$membersrvc_log_level PEER_LOGGING=$peer_log_level docker-compose -f membersrvc-4vp.yaml up
    ;;
    2)  MEMBERSRVC=$membersrvc_endpoint MEMBERSRVC_LOGGING=$membersrvc_log_level PEER_LOGGING=$peer_log_level docker-compose -f membersrvc-4vp-2nvp.yaml up
    ;;
esac