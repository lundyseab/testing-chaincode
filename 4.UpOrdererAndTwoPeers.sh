# create network for network and chaincode
checkNetwok(){
    network_name="my_chain"
    docker network inspect $network_name > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        docker network create $network_name
    fi
}

checkNetwok

sleep 2s
# using docker compose to up order and two peer with database
docker compose up -d
