# Repository Context

This workspace contains banking domain services implemented primarily using Java and Spring and deployed on AWS, OpenShift, or Kubernetes.

# General Instructions

- Treat customer data, credentials, account identifiers, tokens, certificates, keys, and encryption material as sensitive.
- Never reproduce secret values or personally identifiable information in generated code or documentation.
- Base technical statements on repository evidence; do not invent components, interactions, business rules, security controls, or deployment details.
- Label findings as `Confirmed`, `Strongly indicated`, `Assumption`, or `Gap`.
- Reference repository-relative file paths, classes, methods, configuration keys, manifests, and pipeline files.
- Trace API and event flows through controllers, BFFs, services, domain logic, repositories, message handlers, webhooks, adapters, and external clients.
- Treat tests, schemas, OpenAPI/AsyncAPI definitions, migrations, Helm charts, Kubernetes/OpenShift manifests, Terraform, CI/CD files, and runtime configuration as architecture evidence.
- Separate current implementation from recommendations.
- Separate build-time dependencies from runtime dependencies.
- Distinguish repository boundaries, build artifacts, deployable units, and runtime services.
- Use professional banking, security, data, cloud, and enterprise-architecture terminology.
- Mask sensitive sample values using placeholders such as `<MASKED_ACCOUNT_NUMBER>`, `<TOKEN>`, and `<SECRET_REFERENCE>`.
- Store generated architecture documentation under `docs/`.
- Use Mermaid for diagrams unless another format is explicitly requested.
- Ensure generated HTML is self-contained, accessible, responsive, printable, and usable without a web server.
- Validate generated HTML, internal links, Mermaid syntax, evidence references, and sensitive-data masking before completion.
