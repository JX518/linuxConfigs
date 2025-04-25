#!/bin/bash

if [ $(swaync-client -D) == 'false' ]; then  echo {\"text\": \"$(swaync-client -c)\"} ; else echo {\"text\": \"DND\"}; fi
