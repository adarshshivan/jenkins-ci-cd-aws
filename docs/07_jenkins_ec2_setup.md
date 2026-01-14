# ☁️ Jenkins on AWS EC2

## Deployment

After validating the pipeline locally, Jenkins was deployed on an AWS EC2 instance using Docker.

## Implementation Details

Key implementation details:

- Jenkins runs inside a Docker container
- The host Docker socket is mounted into Jenkins
- Pipelines use the EC2 host Docker daemon

## Significance

This setup closely resembles common enterprise Jenkins deployments and highlights the operational responsibilities involved in self-hosted CI.

---
