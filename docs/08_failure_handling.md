# Failure Handling

Failure handling was an important part of this project. Failures were intentionally introduced to observe pipeline behavior and recovery.

The pipeline was verified to:
- Stop execution immediately on test failures
- Display clear error logs
- Clean up containers even when stages fail

This helped ensure the pipeline behaves predictably under real-world conditions.

---
