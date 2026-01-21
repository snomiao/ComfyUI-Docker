FROM pytorch/pytorch:latest

# requirements
RUN apt-get update -y && apt-get install -y git && pip install comfy-cli
RUN apt install curl -y


# install ComfyUI + Manager
COPY /init.sh /
RUN chmod +x /init.sh && /init.sh
WORKDIR /ComfyUI

# RUN comfy --skip-prompt node install comfyui-videohelpersuite

# setup entrypoint script, which runs python main.py
COPY entry.sh /bin/comfyui.sh
RUN chmod +x /bin/comfyui.sh
ENTRYPOINT ["comfyui.sh"]

# default command to run ComfyUI with CPU support and latest frontend version
CMD ["--cpu", "--multi-user", "--listen", "0.0.0.0", "--front-end-version", "Comfy-Org/ComfyUI_frontend@latest"]

EXPOSE 8188