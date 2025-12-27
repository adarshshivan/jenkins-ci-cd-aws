# Solution Overview

To address these challenges, a container-based CI workflow was designed and implemented using Jenkins and GitHub Actions.

The same application, test suite, and Dockerfile were reused across both CI systems to keep the comparison fair. Jenkins pipelines were executed locally first for faster iteration and then moved to AWS EC2 to simulate a real enterprise setup.

GitHub Actions was added as a parallel CI solution to evaluate ease of setup, maintenance effort, and execution behavior.

---