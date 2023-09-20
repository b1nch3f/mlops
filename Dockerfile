FROM python:3.11.5

# Install Jupyter Lab and its dependencies
RUN apt-get update && apt-get install -y python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install jupyterlab

# Any additional configurations or installations can be added here
# For example, you can install additional packages or set environment variables.


WORKDIR /home

# Specify the command to run when the container starts
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
