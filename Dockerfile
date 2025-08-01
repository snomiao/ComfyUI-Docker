FROM pytorch/pytorch

RUN apt-get update -y && apt-get install -y git && pip install comfy-cli

WORKDIR /ComfyUI
RUN git clone https://github.com/comfyanonymous/ComfyUI /ComfyUI
RUN pip install -r requirements.txt
RUN apt install curl -y

ENTRYPOINT "python main.py"
CMD "--cpu --front-end-version Comfy-Org/ComfyUI_frontend@latest"

EXPOSE 8188