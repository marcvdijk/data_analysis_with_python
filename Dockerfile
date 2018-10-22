FROM andrewosh/binder-base

MAINTAINER Marc van Dijk <marcvdijk@gmail.com>

USER root

# Add dependency
RUN apt-get update
RUN apt-get install -y graphviz

USER main

# Install requirements
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt