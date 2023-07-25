#!/bin/bash

CMD=${1}

if [[ "${CMD}" == "start" ]]; then
    ./output/fe/bin/start_fe.sh --daemon
    ./output/be/bin/start_be.sh --daemon
elif [[ "${CMD}" == "stop" ]]; then
    ./output/fe/bin/stop_fe.sh
    ./output/be/bin/stop_be.sh
else
    echo "Unknown cmd"
    exit 0
fi
