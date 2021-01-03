#!/bin/bash

### BEGIN INIT INFO
# Provides: MyService
# Required-Start:    $all
# Required-Stop: 
# Default-Start:     5 
# Default-Stop:      6 
# Short-Description: Your service description
### END INIT INFO

v4l2rtspserver -W 1920 -H 1080 -F 30 -P 8554 /dev/video0 &
