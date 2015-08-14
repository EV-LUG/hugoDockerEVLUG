FROM ubuntu:trusty
MAINTAINER Jason Hiat <jason.hiatt@gmail.com>>
RUN apt-get -y update
RUN apt-get -y install git golang curl 
RUN curl -L https://github.com/spf13/hugo/releases/download/v0.14/hugo_0.14_linux_amd64.tar.gz -o /root/hugo_0.14_linux_amd64.tar.gz
RUN tar -C /root/ -xzf /root/hugo_0.14_linux_amd64.tar.gz
RUN rm /root/hugo_0.14_linux_amd64.tar.gz
RUN mkdir /test
RUN /root/hugo_0.14_linux_amd64/hugo_0.14_linux_amd64 new site /test/
RUN cd /test/ && /root/hugo_0.14_linux_amd64/hugo_0.14_linux_amd64 new about.md
RUN echo "Hello World" >> /test/content/about.md
ADD themes /test/themes
