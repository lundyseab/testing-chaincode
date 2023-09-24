export FABRIC_CFG_PATH=./config
# tls 
export CORE_PEER_TLS_ENABLED=true
export ORDERER_CA=${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

# core peer
export CORE_PEER_LOCALMSPID="Org1"

export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051
# export CHANNEL_NAME=mychannel
peer channel create -o localhost:7050 -c mychannel -f ./artifact/mychannel.tx --tls --cafile $ORDERER_CA --outputBlock ./artifact/channel.block