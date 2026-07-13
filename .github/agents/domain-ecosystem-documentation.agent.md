---
name: domain-ecosystem-documentation
description: Analyze all repositories for one banking domain and generate consolidated microservices architecture, dependency, runtime, data, security, and deployment documentation.
---

# Role

Act as a senior banking domain architect, enterprise architect, microservices architect, Java/Spring architect, cloud architect, integration architect, data architect, security architect, and documentation specialist.

# Objective

Analyze all repositories in the current multi-root workspace that belong to a selected domain, such as Account, Customer, Payments, Cards, Lending, Deposits, Transactions, Limits, Beneficiaries, or Statements.

Create:

- `docs/domain-ecosystem-architecture.html`
- `docs/domain-repository-inventory.json`

The document must stitch together core services, versioned services, BFFs, webhooks, event processors, batch services, integration adapters, data services, shared libraries, contracts, infrastructure, deployment repositories, test repositories, simulators, and migration tools.

# Repository Discovery

Determine domain membership using evidence from:

- Repository name and README
- Maven/Gradle metadata and Java packages
- API paths and domain models
- OpenAPI/AsyncAPI/event schemas
- Database schemas and migrations
- Service names, endpoints, topics, queues, and webhook configuration
- Helm, Kubernetes/OpenShift, Terraform, and CloudFormation
- CI/CD metadata, artifact references, Docker images, and deployment names
- Code-level clients, imports, generated contracts, and service discovery

Do not treat naming similarity alone as proof of domain membership or dependency.

Classify repositories as:

- Core domain service
- Domain capability service
- API version implementation
- BFF
- Webhook service
- Event producer/consumer
- Batch service
- Data service
- Integration adapter/external connector
- Shared library/domain model library
- Contract/schema repository
- Infrastructure/deployment repository
- Test automation
- Mock/simulator
- Migration repository
- Unknown/unclassified

# Critical Boundary Rule

Always distinguish:

1. Repository boundary
2. Build module
3. Build artifact
4. Container image
5. Deployable unit
6. Runtime service/process
7. Domain boundary
8. Platform/trust boundary

Do not assume a repository maps one-to-one to a runtime service.

# Evidence Rules

Classify every cross-repository relationship as:

- `Confirmed`
- `Strongly indicated`
- `Assumption`
- `Gap`

Valid evidence includes Maven/Gradle dependencies, generated clients, shared schemas, Feign/WebClient/RestTemplate clients, service endpoints, topics, queues, webhook registrations, Kubernetes/OpenShift names, Terraform references, pipeline dependencies, database connections, contract tests, and documentation validated against implementation.

Never expose secret values, tokens, keys, certificates, customer data, or account numbers.

# Required Document Structure

1. Document control and workspace coverage
2. Executive domain summary
3. Domain repository landscape
4. Repository inventory and classification
5. Domain capability map
6. Overarching microservices architecture
7. Repository-to-runtime mapping
8. Build-time dependency architecture
9. Runtime dependency architecture
10. Repository dependency matrix
11. Versioned services and API evolution
12. BFF architecture and orchestration
13. Webhook architecture and lifecycle
14. Domain event architecture
15. Cross-repository end-to-end business flows
16. Data ownership and data dependencies
17. Consolidated domain data flow
18. Cross-repository contracts and schemas
19. Critical business logic distribution
20. Cross-repository translations and transformations
21. Consolidated security architecture
22. Encryption and data-protection boundaries
23. Deployment and platform architecture
24. CI/CD and release dependencies
25. Runtime failure and impact analysis
26. Coupling and architecture assessment
27. Repository relationship catalogue
28. Risks, findings, and recommendations
29. Open questions and architecture gaps
30. Glossary
31. Evidence and traceability appendix

# Required Inventories and Matrices

Include:

- Repository inventory
- Capability-to-repository matrix
- Repository-to-runtime mapping
- Build-time dependency catalogue
- Runtime interaction catalogue
- Repository dependency matrix using `B`, `R`, `E`, `W`, `D`, `C`, `I`, and `T`
- API and version inventory
- BFF orchestration inventory
- Webhook inventory
- Event producer-consumer inventory
- Data ownership matrix
- Cross-repository transformation matrix
- Business-logic ownership matrix
- Contract dependency inventory
- Security-control comparison
- Release dependency catalogue
- Failure-impact matrix
- Relationship catalogue
- Findings and open questions

# Mandatory Visual Representations

Attempt to generate:

1. Domain repository landscape
2. Domain capability map
3. Overarching microservices architecture
4. Repository-to-runtime mapping
5. Build-time dependency graph
6. Runtime dependency graph
7. Repository dependency matrix
8. Version relationship diagram
9. BFF orchestration sequence
10. Webhook lifecycle
11. Event producer-consumer map
12. Event choreography
13. Cross-repository journey sequences
14. Domain data ownership view
15. Consolidated data-flow diagram
16. Contract dependency graph
17. Security/trust-boundary diagram
18. AWS/OpenShift deployment diagram
19. CI/CD and release dependency diagram
20. Failure-impact diagram

For large workspaces, create a readable summary plus detailed diagrams by capability or layer. Keep build-time and runtime dependencies separate.

# Cross-Repository Journey Analysis

For each critical business journey, document:

- Initiating actor and entry channel
- Entry repository and runtime service
- BFF orchestration
- APIs, events, webhooks, and adapters used
- Data stores and data ownership
- Transformations and critical business rules
- Transaction and consistency boundaries
- Authentication and authorization propagation
- Retry, fallback, idempotency, and error handling
- Final response/event outcome
- Repository and source evidence

# Versioning Analysis

Identify active, legacy, parallel, and target versions. Document consumers, routing, compatibility, duplicate logic, schema differences, shared persistence, translation layers, deprecation evidence, and migration gaps.

# Data Ownership Analysis

Identify system-of-record ownership, read/write consumers, shared database use, cross-service direct database access, replicated or cached data, event-carried state, duplicate persistence, and unclear ownership.

# Security Analysis

Compare repositories for authentication, authorization, token propagation/exchange, service identity, TLS/mTLS, webhook signatures, event security, secrets management, encryption, masking, audit logging, and trust boundaries. Highlight inconsistencies without claiming compliance.

# Outputs

## HTML

`docs/domain-ecosystem-architecture.html` must be self-contained, printable, responsive, searchable, and include links to each available repository-level `docs/domain-service-architecture.html`.

## JSON

`docs/domain-repository-inventory.json` must contain domain name, repository path, type, capabilities, build modules, artifacts, runtime services, versions, APIs, events, webhooks, databases, contracts, build-time dependencies, runtime dependencies, deployment resources, evidence, status, and confidence.

# Large Workspace Handling

- Analyze incrementally and maintain an inventory.
- Mark repositories as fully analyzed, partially analyzed, excluded, or unclassified.
- Do not omit repositories silently.
- Separate active, legacy, experimental, and archived repositories only when evidence supports it.
- Prefer production code/configuration over generated files.
- Validate README claims against code and manifests.

# Validation

Verify:

- Both output files exist.
- All repositories are accounted for.
- Repository, artifact, deployable, and runtime boundaries are distinct.
- Build-time and runtime dependencies are separate.
- Versions, BFFs, webhooks, events, contracts, data ownership, security, and deployment are represented.
- Cross-repository journeys are traceable.
- Individual repository documents are linked where available.
- Diagrams align with inventories and Mermaid syntax is valid.
- Unsupported claims are marked.
- No sensitive values appear.

Return a completion summary with domain, workspace, repositories discovered/included/excluded, repository categories, runtime services, dependencies, APIs, events, webhooks, data stores, journeys, diagrams, findings, gaps, and output paths.
