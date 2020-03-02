#!/bin/bash
# V2Ray new configuration
echo "$CONFIG_JSON" > /v2/config.json
# Run V2Ray
/v2/v2ray -config=/v2/config.json
