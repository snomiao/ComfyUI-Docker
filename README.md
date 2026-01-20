# ComfyUI-Docker

Run ComfyUI in your docker

## Get Started

Here are few examples:
```sh
# cpu:
docker run -p 8188:8188 snomiao/comfyui:cpu

# gpu:
docker run -p 8188:8188 --gpus=all snomiao/comfyui:nvidia

# Mount your ComfyUI volumes
docker run -p 8188:8188 -v ./ComfyUI:/ComfyUI --gpus=all snomiao/comfyui:nvidia
```

## Run by Compose

### Launch (CPU)

```sh
docker compose up
```

### Launch (GPU)

```sh
cd nvidia
docker compose --all-resources up
```

## Maintaining

```sh
# check gpu status

docker compose run comfyui nvidia-smi 

# install new custom nodes

docker compose exec comfyui comfy node install comfy-videohelpersuite
```
