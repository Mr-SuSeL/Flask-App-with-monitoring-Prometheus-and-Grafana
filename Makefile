.PHONY: deps test run lint

deps:
		pip install -r requirements.txt; \
		pip install -r test_requirements.txt
run:
		python main.python

test: 
		PYTHONPATH=. py.test --verbose -s

lint:
		flake8 hello_world test