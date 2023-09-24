export FABRIC_CFG_PATH=./config
configtxgen -outputAnchorPeersUpdate ./artifact/Org1Anchor.tx -profile TwoOrgsGenesis -channelID mychannel  -asOrg Org1
configtxgen -outputAnchorPeersUpdate ./artifact/Org2Anchor.tx -profile TwoOrgsGenesis -channelID mychannel -asOrg Org2