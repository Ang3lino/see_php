FILE = Makefile
MESSAGE = para hacer commits rapidos

push: ${FILE}
	sudo git add ${FILE}; sudo git commit -m "${MESSAGE}"; sudo git push

