venv_name=py38
py_version=3.8

# create and activate conda venv
conda create -n ${venv_name} python=${py_version}
source $HOME/.bashrc

conda activate ${venv_name}

#install and activate poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
source $HOME/.poetry/env
