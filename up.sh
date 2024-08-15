#!bun
services:
  comfyui:
    image: 
    build: .
    # volumes:
    #   - C:\Users\snomi\Documents\comfy\ComfyUI:/root/comfy/ComfyUI
    ports:
      - 8188:8188
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              capabilities: [gpu]

# docker run --name comfyui snomiao/comfyui