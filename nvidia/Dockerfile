# Check Latest tag here - [nvidia/cuda Tags \| Docker Hub]( https://hub.docker.com/r/nvidia/cuda/tags )
FROM nvidia/cuda:12.8.0-cudnn-devel-ubuntu22.04

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Install PyTorch with CUDA 12.8 support
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128

# TODO: optimize to single layer
RUN apt-get update -y && apt-get install -y git && pip install comfy-cli
RUN apt install curl -y

WORKDIR /ComfyUI

RUN git clone https://github.com/comfyanonymous/ComfyUI /ComfyUI
RUN pip install -r requirements.txt

RUN git clone https://github.com/Comfy-Org/ComfyUI-Manager /ComfyUI/custom_nodes/ComfyUI-Manager && \
    cd /ComfyUI/custom_nodes/ComfyUI-Manager && \
    pip install -r requirements.txt && \
    cd /ComfyUI

ENTRYPOINT ["python", "main.py"]
CMD ["--listen", "0.0.0.0", "--front-end-version", "Comfy-Org/ComfyUI_frontend@latest"]

EXPOSE 8188