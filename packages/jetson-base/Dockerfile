#---
# name: jetson-base
# group: ml
# depends: [opencv:4.10.0, pytorch, torchvision, torch2trt, tensorflow2, tensorboard, jupyterlab, jupyter_clickable_image_widget, gstreamer]
# test: [test_pandas.py, test_scipy.py, test_sklearn.py, test_matplotlib.py]
#---
ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN pip3 install --no-cache-dir --verbose scipy
RUN pip3 install --no-cache-dir --verbose scikit-learn
RUN pip3 install --no-cache-dir --verbose pandas
RUN pip3 install --no-cache-dir --verbose matplotlib
