git_repo=https://github.com/pengfei99
project_name=SparkStreamingCV
kernel_name=spark_streaming_cv

# get project source
git clone ${git_repo}/${project_name}.git
cd ${project_name}

# create project env
poetry install

# create a kernel
poetry run python -m ipykernel install --name ${kernel_name} --user
