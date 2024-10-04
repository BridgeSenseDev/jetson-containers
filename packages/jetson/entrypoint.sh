#!/bin/bash

cd /

# Start JupyterLab in the background
./start_jupyter &

# Run the Python script
python3 -m jetcard.display_server
