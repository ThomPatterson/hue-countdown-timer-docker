build:
	docker image build -t thompatterson/hue-countdown-timer:0.1 .

run:
	docker container run --rm -it -p 12000:8080 --name hue-countdown-timer thompatterson/hue-countdown-timer:0.1

export:
	docker export -o test.tgz hue-countdown-timer

push:
	docker push thompatterson/hue-countdown-timer:0.1
