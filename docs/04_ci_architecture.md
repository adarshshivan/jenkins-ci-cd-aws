# 🏗️ CI Architecture

![Architecture](../images/architecture/jenkins-cicd-aws.png)

## Components

The CI architecture consists of the following components:

- GitHub repository as the source of truth
- Jenkins for self-hosted CI execution
- GitHub Actions for managed CI execution
- Docker for build and runtime consistency

## Pipeline Flow

All pipelines follow the same logical flow: checkout → build → test → validate.  
Only the CI execution environment changes between Jenkins and GitHub Actions.

---