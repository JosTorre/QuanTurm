build-container:
	mvn compile assembly:single
	sudo docker build -t lightchain .
