# http_server_minikube README:

# Repo contains:
- Dockerfile
- ansible folder with the pipeline
- manifests folder with deployment.yaml to create pods with probes and networking.yaml to create Service and Ingress

# Docker Hub Image URL:
- https://hub.docker.com/repository/docker/valeriaverboloz/http_server

# Run Pipeline:
- go by path: http_server_minikube/ansible
- run: 'ansible-playbook pipeline.yaml'

# Versioning:
- ansible 2.10.1
- python version = 3.8.9 (default, Apr  3 2021, 01:51:00) [Clang 12.0.0 (clang-1200.0.32.29)]

# Checking:
- Please add '<ingress_ip test.com>' in your /etc/hosts file and then you may open the browser to check connection or use 'curl test.com'