# Challenges and Solutions

## Docker Networking in CI
- Issue: Health checks failed when accessed from the host
- Solution: Health validation was moved inside the container using docker exec

## Jenkins Docker Permissions
- Issue: Jenkins could not access Docker daemon
- Solution: Proper Docker socket mounting and permission handling

These challenges reflect common CI issues encountered in real projects.

---
