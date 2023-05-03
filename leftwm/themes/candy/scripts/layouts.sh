#!/bin/bash

timeout 0.1s leftwm state | jq -r '.workspaces[] | select(.output == "HDMI1") |.layout' | tr -d '\n'
