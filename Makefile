start:
	docker-compose up --build -d
	watchman-make -p 'flask/app/*.py' -s 1 --run 'touch flask/app/hot-reload' &
	docker logs --follow flask
stop:
	docker-compose down