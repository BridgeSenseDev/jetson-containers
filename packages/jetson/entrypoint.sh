#!/bin/bash

cd /

# Start JupyterLab in the background
./start_jupyter &

cd /opt/jetcard

# Run the Python script
python3 -m jetcard.display_server
