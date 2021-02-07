SHELL=/bin/bash
PID=$(shell ps | grep watchman | awk '{print $$1}' | head -1);

start:
	docker-compose up --build -d
	watchman-make -p 'flask/app/**/*.py' 'flask/app/**/*.html' -s 1 --run 'touch flask/app/hot-reload' &
	docker logs --follow flask
stop:
	kill -9 $(PID)
	docker-compose down