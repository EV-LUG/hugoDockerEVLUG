FROM hickca
MAINTAINER Carl Hicks <mail@carlhicks.me>
ADD hugo hugo
ADD hugoTestSite/ hugoTestSite/
WORKDIR /hugoTestSite
EXPOSE 6000
ENTRYPOINT ["/hugo"]
# On host server you will need to point in your /etc/hosts to mesoes.demo to
# the servers IP
CMD ["sever","-w", "--baseURL=http://mesos.demo/","--port=6000", "--bind=0.0.0.0"]
