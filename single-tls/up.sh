#!/bin/bash
node_ip=10.24.237.62
membersrvc_log_level=DEBUG
peer_log_level=DEBUG


membersrvc_endpoint=$node_ip:7054
echo "Set MEMBERSRVC to "$membersrvc_endpoint
rootnode_endpoint=$node_ip:7051
echo "Set ROOTNODE to "$rootnode_endpoint

case $1 in
    1)  MEMBERSRVC=$membersrvc_endpoint LOCALIP=$node_ip ROOTNODE=$rootnode_endpoint MEMBERSRVC_LOGGING=$membersrvc_log_level PEER_LOGGING=$peer_log_level docker-compose -f membersrvc-4vp.yaml up
    ;;
    2)  MEMBERSRVC=$membersrvc_endpoint LOCALIP=$node_ip ROOTNODE=$rootnode_endpoint MEMBERSRVC_LOGGING=$membersrvc_log_level PEER_LOGGING=$peer_log_level docker-compose -f membersrvc-4vp-2nvp.yaml up
    ;;
esac