install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test: 
	python -m pytest -vv --cov=main.py test_main.py
		
lint:
	pylint --disable=R,C main.py

format:
	black *py
	
all: install lint test format