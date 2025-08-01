
## Setup

docker compose build
docker create --name tmp-comfyui snomiao/comfyui
docker cp tmp-comfyui:/ComfyUI ./
docker rm -f tmp-comfyui

## Launch (CPU)

docker compose up

## Launch (GPU)

docker compose exec comfyui nvidia-smi
docker compose --all-resoruces up