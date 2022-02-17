!/bin/bash

NAME=$1
LASTNAME=$2
SHOW=$3

if [ "$SHOW" == "true" ]; then
  echo "Hello, $NAME $LASTNAME"
else
echo "if you dont see name, please mark show option"
fi
