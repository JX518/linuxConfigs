#!/bin/bash
sudo mkdir /run/media/cifs/
sudo mount -t cifs -o vers=2.0,username=xujus //192.168.1.118/Public /run/media/cifs/
