FROM python 
LABEL maintainer "https://github.com/EbolaWare"
LABEL dockerhub "https://hub.docker.com/u/ebolaware"
RUN mkdir /opt/sigma/
COPY . /opt/sigma/

RUN cd /opt/sigma/ && pip3 install -r tools/requirements.txt && pip3 install -r tools/requirements-misp.txt && chmod +x entrypoint.sh && mv entrypoint.sh /
CMD ["/entrypoint.sh","help"]
