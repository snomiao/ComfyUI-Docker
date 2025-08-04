FROM pytorch/pytorch:latest

RUN apt-get update -y && apt-get install -y git && pip install comfy-cli

WORKDIR /ComfyUI

# install ComfyUI
RUN git clone https://github.com/comfyanonymous/ComfyUI /ComfyUI
RUN pip install -r requirements.txt
RUN apt install curl -y

# install ComfyUI Manager
RUN cd custom_nodes && \
    git clone https://github.com/Comfy-Org/ComfyUI-Manager && \
    cd ComfyUI-Manager && \
    pip install -r requirements.txt && \
    cd ../..

# setup entrypoint script, which runs python main.py
COPY entry.sh /entry.sh
RUN chmod +x /entry.sh
ENTRYPOINT ["/entry.sh"]

# default command to run ComfyUI with CPU support and latest frontend version
CMD ["--cpu", "--listen", "0.0.0.0", "--front-end-version", "Comfy-Org/ComfyUI_frontend@latest"]

EXPOSE 8188