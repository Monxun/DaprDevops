# DaprDevops
Development repo for dapr microservice architecture

[Components]
- exposed via gRPC API / HTTP API
- service to service invocation
- state management
- publish and subscribe
- resource bindings and triggers
- actors
- observability
- secrets
- extensible

[Concepts]
1. Usable via gRPC or HTTP. Meaning if your app can interact with these interfaces it can leverage daprs components
2. Use only those building blocks your app needs
3. Great for wrapping legacy applications via dapr sidecar
4. CloudEvent Protocol for Messaging
