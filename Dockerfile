FROM hickca
MAINTAINER Carl Hicks <mail@carlhicks.me>
ADD hugo hugo
ADD hugoTestSite/ hugoTestSite/
WORKDIR /hugoTestSite
EXPOSE 6000
ENTRYPOINT ["/hugo"]
CMD ["sever","-w", "--baseURL=http://mesos.demo/","--port=6000", "--bind=0.0.0.0"]
