checkBin(){
    cryptogen --help > /dev/null 2>&1
    if [ $? -eq 0 ]; then
            echo "key marterial will generate now."
        else
            echo "configure your bin first!"
            exit 1
    fi
}

# check before run cryptogen
checkBin
cryptogen generate --config=./crypto-config.yaml --output="crypto-config"