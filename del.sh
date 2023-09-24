rm -R ./artifact
rm -R ./crypto-config
rm -R ./ledger1
rm -R ./ledger2
rm -R ./basic.tar.gz
rm -R ./log.txt

docker rm -f $(docker ps -aq)
docker volume prune