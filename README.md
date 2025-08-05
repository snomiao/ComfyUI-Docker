# ComfyUI-Docker

## Setup

```
bun setup.sh
```

## Launch (CPU)

docker compose up

## Launch (GPU)

docker compose exec comfyui nvidia-smi
docker compose --all-resources up

docker run -p 8188:8188 --gpus=all snomiao/comfyui:nvidia

## Maintaining

docker compose exec comfyui comfy node install comfy-videohelpersuite