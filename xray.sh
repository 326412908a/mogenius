#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ac80b5d6-986e-41ee-b077-b753294e454e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

