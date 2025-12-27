# Jenkins CI/CD Pipeline on AWS (Jenkins + GitHub Actions)

This project demonstrates the design and implementation of a complete CI pipeline using Jenkins and GitHub Actions for a Dockerized Python application.

The primary focus of the project is CI automation, not deployment. Jenkins is set up both locally and on an AWS EC2 instance to reflect real-world self-hosted CI usage, while GitHub Actions is used as a managed CI alternative to compare tooling trade-offs.

The same application, test suite, and Dockerfile are used across both CI systems to ensure consistency and enable a fair comparison.

---

## Key Highlights

- Declarative Jenkins pipeline executed on AWS EC2
- Docker-based build and test workflow
- Automated test execution using pytest
- Container health validation inside CI
- Failure handling and cleanup logic
- GitHub Actions pipeline for CI comparison
- Jenkins vs GitHub Actions analysis based on practical usage

---

## Tech Stack

- Jenkins (Local & AWS EC2)
- GitHub Actions
- Docker
- Python (Flask, Pytest)
- Shell scripting
- AWS EC2

---

## What This Project Demonstrates

- Designing CI pipelines with clear, isolated stages
- Running Jenkins in a cloud-based, self-hosted setup
- Handling Docker permissions and networking in CI
- Comparing self-hosted and managed CI tools
- Making CI tool decisions based on operational trade-offs

---

## Documentation

Detailed documentation for this project is available in the `docs` folder, covering:
- CI architecture and pipeline design
- Jenkins local and EC2 setup
- Failure handling strategies
- Jenkins vs GitHub Actions comparison
- Challenges, learnings, and future improvements

---

## Status

✅ CI pipelines implemented  
✅ Jenkins (EC2) execution verified  
✅ GitHub Actions CI added  

---

This project was built to gain hands-on experience with CI automation and to understand real-world DevOps trade-offs between different CI tools.
