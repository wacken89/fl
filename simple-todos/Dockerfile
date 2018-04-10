FROM wacken/meteor:base

RUN mkdir /opt/meteor
COPY . /opt/meteor
WORKDIR /opt/meteor
EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/meteor", "--allow-superuser"]