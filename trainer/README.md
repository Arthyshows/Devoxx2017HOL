# Trainers Read Me

The following describe how you can setup environment for trainees so they can get started with the lab very quickly.

## Trainee lab environment

The best way to get an environment up and running for each trainee is to use Docker containers. You can use the [Dockerfile-trainer](Dockerfile-trainee) file available in this folder to create a new image.

It contains everything you need for the trainee environment:

- Azure CLI 2.0
- Kubectl
- Required updates etc...
- SSH, a root account...

You can create a new image using:

```bash
docker build -t devoxx2017trainee -f Dockerfile-trainee .
```

SSH is exposed on the port 22 in the container. You can run a new environment using:

```bash
docker run -d -p 22:22 devoxx2017trainee
```

And then follow the [Setup your environment readme](../1-Setup.md) to learn how to connect to the container.