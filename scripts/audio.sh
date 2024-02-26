#!/bin/bash
if pidof kmix
then
	killall -9 kmix
else
	kmix
fi
