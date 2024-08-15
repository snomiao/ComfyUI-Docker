FROM pytorch/pytorch
RUN apt-get update -y && apt-get install -y git && pip install comfy-cli
RUN echo -ne y\\ny | comfy install --nvidia
CMD echo -ne y\\ny | comfy install --nvidia && echo y | comfy launch
EXPOSE 8188