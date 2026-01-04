#!/bin/bash
java -Xms2G -Xmx10G \
-XX:+UseG1GC \
-XX:MaxGCPauseMillis=200 \
-XX:+ParallelRefProcEnabled \
-XX:+DisableExplicitGC \
-jar server.jar --nogui
