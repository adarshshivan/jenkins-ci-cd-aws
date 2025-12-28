# Jenkins on AWS EC2

After validating the pipeline locally, Jenkins was deployed on an AWS EC2 instance using Docker.

Key implementation details:
- Jenkins runs inside a Docker container
- The host Docker socket is mounted into Jenkins
- Pipelines use the EC2 host Docker daemon

This setup closely resembles common enterprise Jenkins deployments and highlights the operational responsibilities involved in self-hosted CI.

---
