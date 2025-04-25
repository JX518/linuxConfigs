#!/bin/bash

if [ $(swaync-client -D) == 'true' ]; then  echo {\"text\": \"$(swaync-client -c)\"} ; else echo {\"text\": \"DND\"}; fi
