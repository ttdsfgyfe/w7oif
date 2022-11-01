#!/bin/sh
if [ ! -f UUID ]; then
  UUID="501ec00d-12fc-4008-9708-e0206217854a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

