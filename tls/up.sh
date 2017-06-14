#!/bin/bash
node1_ip=10.24.237.62
node2_ip=10.26.255.163
membersrvc_log_level=DEBUG
peer_log_level=DEBUG


membersrvc_endpoint=$node1_ip:7054
echo "Set MEMBERSRVC to "$membersrvc_endpoint
rootnode_endpoint=$node1_ip:7051
echo "Set ROOTNODE to "$rootnode_endpoint

case $1 in
    1)  MEMBERSRVC=$membersrvc_endpoint LOCALIP=$node1_ip ROOTNODE=$rootnode_endpoint MEMBERSRVC_LOGGING=$membersrvc_log_level PEER_LOGGING=$peer_log_level docker-compose -f membersrvc-vp0-vp1.yaml up
    ;;
    2)  MEMBERSRVC=$membersrvc_endpoint LOCALIP=$node2_ip ROOTNODE=$rootnode_endpoint MEMBERSRVC_LOGGING=$membersrvc_log_level PEER_LOGGING=$peer_log_level docker-compose -f vp2-vp3.yaml up
    ;;
esac
