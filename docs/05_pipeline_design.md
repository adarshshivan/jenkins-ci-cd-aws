# Pipeline Design

The pipeline was designed using clear and isolated stages to simplify debugging and maintenance.

Each stage has a single responsibility:
- Checkout: fetch the source code
- Build: create the Docker image
- Test: run automated tests
- Validate: verify application health
- Cleanup: remove containers after execution

This structure ensures that failures are easy to identify and do not leave behind unused resources.

---