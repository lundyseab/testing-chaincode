./1.GenerateKeyMarterial.sh
./2.Generate-genesis_block.sh
./3.CreateChannelTx.sh
./4.CreateTwoAnchorPeers.sh
./5.UpOrdererAndTwoPeers.sh
./6.CreateApplicationChannel.sh

sleep 3s
./7.JoinChannel.sh
./8.UpdateChannel.sh

sleep 1s
./9.InstallChaincode.sh
