FILE = create_account.php
MESSAGE = script funcionando correctamente

push: ${FILE}
	sudo git add ${FILE}; sudo git commit -m "${MESSAGE}"; sudo git push

