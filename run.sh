#!/bin/bash
hostname=${1:-hax}
docker run -it -h $hostname --name $hostname --rm myubuntu /bin/bash
