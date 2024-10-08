#---
# name: jetson
# notes: will autostart Jupyter server on port 8888 unless container entry CMD is overridden
#---
ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN pip3 install --ignore-installed --no-cache-dir blinker adafruit_ssd1306 jetson.gpio

#####################################
# Install jtop
RUN echo -e "\e[100m Install jtop \e[0m"
RUN python3 -m pip install flask jetson-stats 

#####################################
# Install jetracer
RUN echo -e "\e[48;5;172m Install jetracer \e[0m"
RUN python3 -m pip install git+https://github.com/NVIDIA-AI-IOT/jetracer

#####################################
# Install jetcard
RUN echo "\e[44m Install jetcard \e[0m"
RUN cd $HOME
RUN git clone https://github.com/BridgeSenseDev/jetcard.git

#####################################
# Install traitlets
RUN echo -e "\e[48;5;172m Install traitlets \e[0m"
RUN python3 -m pip install git+https://github.com/ipython/traitlets@main

#####################################
# Install jetcam
RUN echo "\e[44m Install jetcard \e[0m"
RUN cd $HOME
RUN git clone https://github.com/BridgeSenseDev/jetcam.git
RUN cd jetcam && python3 setup.py install

ENV SHELL /bin/bash
SHELL ["/bin/bash", "-c"] 

# Copy the start_jupyter script and test.py script
COPY jupyter_server_config.json /root/.jupyter/
COPY start_jupyter /
COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh
RUN chmod +x /start_jupyter

CMD /entrypoint.sh
