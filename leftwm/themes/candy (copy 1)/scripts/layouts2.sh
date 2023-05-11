#!/bin/bash
timeout 0.5s leftwm state | jq -r '.workspaces[] | select(.output == "eDP1") | .layout'
#sleep 0.5
