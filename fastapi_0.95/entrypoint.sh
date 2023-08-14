#!/bin/bash

export WHATAP_HOME=${PWD}
chmod -R 777 $WHATAP_HOME
whatap-setting-config \
--host 15.165.146.117 \
--license x41j020vgih0p-z76vitdg19kmh0-x3dg52pgt12f3t \
--app_name myapp \
--app_process_name uvicorn

whatap-start-agent uvicorn server:app --host 0.0.0.0 --port 80
