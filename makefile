build:
	@docker pull jenkins:1.609.1
run:
	@docker run -p 8080:8080 --name=jenkins-master -d myjenkins
start:
	@docker start jenkins-master
stop:
	@docker stop jenkins-master
clean:	stop
	@docker rm -v jenkins-master
