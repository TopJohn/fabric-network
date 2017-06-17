#!/bin/bash
membersrvc_log_level=INFO
peer_log_level=INFO

membersrvc_endpoint=membersrvc:7054
echo "Set MEMBERSRVC to "$membersrvc_endpoint

MEMBERSRVC=$membersrvc_endpoint MEMBERSRVC_LOGGING=$membersrvc_log_level PEER_LOGGING=$peer_log_level docker-compose -f membersrvc-4vp.yaml up
