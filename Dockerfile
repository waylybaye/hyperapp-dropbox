FROM alpine:latest
MAINTAINER HyperApp <hyperappcloud@gmail.com>

RUN mkdir /opt/dropbox
RUN wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - --strip 1 -C /opt/dropbox
RUN curl -Lo /opt/dropbox/dropbox.py https://www.dropbox.com/download?dl=packages/dropbox.py
CMD /opt/dropbox/dropboxd
