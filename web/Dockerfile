FROM python:3.12.0-slim

COPY . /app 
WORKDIR /app 

# This creates the python environment, create the envt in the /opt folder when in container; /opt is standard place to add additional installations
RUN python3 -m venv /opt/venv 

RUN /opt/venv/bin/pip install pip --upgrade && \
    RUN /opt/venv/bin/pip install -r requirements.txt && \
    chmod +x entrypoint.sh

CMD ["/app/entrypoint.sh"]
