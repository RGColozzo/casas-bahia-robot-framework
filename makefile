runreq:
	pip install -r requirements.txt

runtest:
	python3 -m robot -d logs -i @casasbahia -L debug test/casas_bahia.robot