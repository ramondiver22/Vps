#!/bin/bash
################################################################################
#                                                                              #
# Copyright (c) 2023 Díwash(Diwash0007)                                        #
#                                                                              #
# Licensed under the Apache License, Version 2.0 (the "License");              #
# you may not use this file except in compliance with the License.             #
# You may obtain a copy of the License at                                      #
#                                                                              #
#     http://www.apache.org/licenses/LICENSE-2.0                               #
#                                                                              #
# Unless required by applicable law or agreed to in writing, software          #
# distributed under the License is distributed on an "AS IS" BASIS,            #
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.     #
# See the License for the specific language governing permissions and          #
# limitations under the License.                                               #
#                                                                              #
################################################################################

# ***************************************************************************************
# - Script to run an Ubuntu RDP server continuously for approximately 5 hours using a while loop.
# - Author: Díwash (Diwash0007)
# - Version: generic:1.0
# - Date: 2 July 2023
#
#       * Changes for V0.9 (20230701) - make it clear that script is not ready.
#       * Changes for V1.0 (20230702) - make it clear that script is now ready.
#
# ***************************************************************************************

# Display a sleeping bot
display_sleeping_bot() {
    echo "";
    echo "                                          ________     ";
    echo "                              _________  |____/  /     ";
    echo "                ___________  |_____/  /      /  /____  ";
    echo "               |_______/  /       /  /       \ /_____| ";
    echo "                      /  /       /  /______            ";
    echo "  _______________    /  /        \ /_______|           ";
    echo " |               |  /  /_______                        ";
    echo " | ____ | | ____ |  \ /________|                       ";
    echo " |  (_) | | (_)  |                                     ";
    echo " |      |_|      |                                     ";
    echo " |     _____     |                                     ";
    echo " |_______________|                                     ";
    echo "";
}

# Keep alive for 5 hours
keep_running() {
    local start_time=$(date +%s);
    local stop_time=$((start_time + 18000));
    while ((start_time < stop_time)); do
        display_sleeping_bot;
        sleep 180;
        start_time=$(date +%s);
    done
}

# Do all the work!
WorkNow() {
    local SCRIPT_VERSION="20230702";
    echo "$0, v$SCRIPT_VERSION";
    local START=$(date);
    keep_running;
    local STOP=$(date);
    echo "-- Start time: $START --";
    echo "-- Stop time: $STOP --";
}

# --- main() ---
WorkNow;
# --- end main() --
