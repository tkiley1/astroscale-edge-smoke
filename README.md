# Astroscale edge smoke app

A disposable, dependency-free Python HTTP app for checking connector deployment
and the Astroscale tunnel. GET `/` and `/healthz` return a fixed JSON app marker
and the runtime architecture. No credentials, database, or persistent data.

Deploy this repository through Astroscale to an online connector using branch
`main`, container port `8080`, 250 millicores and 256 MiB RAM. Leave PostgreSQL
disabled. Open the workload preview and check that `/healthz` returns HTTP 200
with `app: astroscale-edge-smoke`.

The multi-architecture Python base image is pinned by digest. A successful test
validates source retrieval, image build, container start and HTTP routing. It does
not validate npm/pip installs, database migration, custom-domain cutover or every
Docker runtime configuration. Remove the workload from Fleet when finished.
