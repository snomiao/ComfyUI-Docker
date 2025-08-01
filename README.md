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
