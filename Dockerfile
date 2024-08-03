FROM pytorch/pytorch
RUN apt-get update -y && \
    apt-get install -y git && \
    pip install comfy-cli && \
    echo "y\ny" | comfy install
EXPOSE 8188
CMD echo y | comfy launch