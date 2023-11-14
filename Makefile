upload: clean_cache
	rshell --port /dev/ttyACM0 --editor nano --buffer-size 512 rsync kameleon/ /pyboard

term:
	rshell --port /dev/ttyACM0 --editor nano --buffer-size 512

repl:
	rshell --port /dev/ttyACM0 --editor nano --buffer-size 512 repl

clean_cache:
	find . -type d -name '__pycache__' -exec rm -rf {} +

test:
	python3 -m unittest discover -s tests 