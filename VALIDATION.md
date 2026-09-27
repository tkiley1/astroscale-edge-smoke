# Validation record

## 2026-09-27: existing NH connector

Source commit: `d7e4b0a`. Connector version: `0.5.21`.

The app passed local HTTP checks for `/` and `/healthz`. It was submitted through
Astroscale's workload creation service with 250 millicores and 256 MiB RAM.

NH completed the Docker build and reached container startup, but deployment failed
when Docker reported no published `8080/tcp` port. A subsequent container-log
request returned no output. No healthy tunnel endpoint was established.

NH reports an ARM64 kernel with 32-bit userspace and a 32-bit Docker daemon
(`20.10.5+dfsg1`). This test does not establish the exact cause of the missing
port, and it does not demonstrate a supported production runtime. The failed
disposable workload was submitted for removal after collecting the result.

The fresh-device onboarding test remains pending. Use a 64-bit OS and Docker
runtime, then deploy the same repository and verify its marker through the
Astroscale preview URL before testing database or custom-domain workflows.
