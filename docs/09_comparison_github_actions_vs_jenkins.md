# ⚖️ Jenkins vs GitHub Actions

## Overview

This project uses both Jenkins and GitHub Actions to run the same CI workflow and compare their behavior and trade-offs.

## High-Level Comparison

| Aspect              | Jenkins       | GitHub Actions  |
|---------------------|---------------|-----------------|
| Hosting             | Self-hosted   | Fully managed   |
| Setup Effort        | High          | Low             |
| Maintenance         | Manual        | None            |
| Scaling             | Manual        | Automatic       |

## Pipeline Execution

| Stage               | Jenkins            | GitHub Actions     |
|---------------------|--------------------|--------------------|
| Trigger             | Webhook / manual   | Push / PR          |
| Runner              | EC2 instance       | GitHub-hosted      |
| Workspace           | Persistent         | Ephemeral          |
| Cleanup             | Scripted           | Automatic          |

## Build & Test Strategy

| Area                | Jenkins                  | GitHub Actions     |
|---------------------|--------------------------|-------------------|
| Docker Build        | EC2 Docker daemon        | Runner Docker     |
| Test Execution      | Inside container         | On runner         |
| Health Check        | Container-internal       | Not required      |

## Decision Summary

GitHub Actions is better suited for small teams and quick setups, while Jenkins provides more control and flexibility for complex or enterprise environments.

---
