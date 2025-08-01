#!/usr/bin/env bun
docker compose pull || docker compose build
docker create --name tmp-comfyui snomiao/comfyui
docker cp tmp-comfyui:/ComfyUI ./
docker rm -f tmp-comfyui
