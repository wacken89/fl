#/bin/bash

IMAGE_NAME="fl/meteor:checklist"

case "${1}" in
        --build | -b ) docker build --no-cache --rm -t ${IMAGE_NAME} .
        ;;
        --run | -r ) docker-compose up -d
        ;;
        --push| -p ) docker push ${IMAGE_NAME}
        ;;
        --help | -h ) printf "usage: ${0} [arg]\n--build,-b\tBuild image\n--run,-r\tRun\n--push,-p\tPush image\n"
                ;;
        * ) printf "Print ${0} --help for help\n"
                ;;
esac