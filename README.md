[![CircleCI](https://dl.circleci.com/status-badge/img/gh/twgituser/04_Project_Microservices/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/twgituser/04_Project_Microservices/tree/main)

## Project Overview

Project to operationalize a Machine Learning Microservice API.

You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project operationalizes a Python flask app that serves out predictions (inference) about housing prices through API calls.
This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Goals

Project goal is to perationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/):

- Code is lint tested
- Use a Dockerfile to containerize the application
- Deploy the containerized application using Docker and make a prediction
- Improve the log statements
- Configure Kubernetes and create a Kubernetes cluster
- Deploy a container using Kubernetes and make a prediction
- Upload a complete Github repo with CircleCI to indicate that your code has been tested

### Project outputs

Project contains 2 outputs files (output_txt_files folder):
docker_out.txt => contains output of running ./make_predition.sh against app running inside docker container
kubernetes_out.txt => contains the output of ./run_kubernetes.sh

## Setup the Environment

- Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv.

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host.
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```

- Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

### Kubernetes Steps

- Setup and Configure Docker locally
- Setup and Configure Kubernetes locally
- Create Flask app in Container
- Run via kubectl
