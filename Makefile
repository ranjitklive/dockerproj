setup:
	python3 -m venv ~/.dockerproj

install:
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=myrepolib tests/*.py
	python -m pytest --nbval notebook.ipynb


lint:
	hadolint Dockerfile
	pylint --disable=R,C myrepolib cli web

all: install lint test