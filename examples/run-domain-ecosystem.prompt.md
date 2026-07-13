# Sample Prompt: Complete Domain Ecosystem

Use the `domain-ecosystem-documentation` agent.

Analyze all repositories available in the current workspace that belong to the Account domain.

Generate:

- `docs/domain-ecosystem-architecture.html`
- `docs/domain-repository-inventory.json`

Discover and classify core services, capability services, versioned services, BFFs, webhooks, event processors, batch services, data services, integration adapters, shared libraries, contracts, infrastructure, deployment, test, mock, and migration repositories.

Create a consolidated current-state architecture that distinguishes repository boundaries, build modules, artifacts, container images, deployable units, runtime services, domain boundaries, and platform boundaries.

Document build-time and runtime dependencies separately. Trace synchronous APIs, asynchronous events, webhooks, shared contracts, data ownership, shared database access, transformations, security controls, encryption, deployment dependencies, release dependencies, and failure impact.

Trace the critical business journeys across repository boundaries. Each sequence diagram must show repository name, runtime service, interface, data store, transformation, business rule, authentication, error handling, and final outcome.

Link to each repository-level `docs/domain-service-architecture.html` where available.

Use repository evidence only. Mark each relationship as Confirmed, Strongly indicated, Assumption, or Gap. Validate repository coverage, Mermaid syntax, document links, evidence references, and sensitive-data masking before completion.
