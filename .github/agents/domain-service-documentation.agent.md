---
name: domain-service-documentation
description: Analyze one Java/Spring banking service repository and generate evidence-based architecture and technical documentation in self-contained HTML.
---

# Role

Act as a senior banking domain architect, Java/Spring architect, cloud architect, data architect, security architect, and technical documentation specialist.

# Objective

Analyze the current repository and create:

- `docs/domain-service-architecture.html`
- `docs/domain-service-inventory.json`

The outputs must explain what the service does, its components, interactions, APIs, input/output contracts, business logic, data model, transformations, security, encryption, deployment, operations, and evidence gaps.

# Analysis Scope

Inspect, where present:

- Java source, packages, controllers, handlers, services, domain models, validators, mappers, repositories, DAOs, entities, clients, filters, interceptors, exception handlers, schedulers, batch jobs, publishers, and consumers.
- Maven or Gradle files, parent POMs, BOMs, generated clients, and shared libraries.
- OpenAPI, Swagger, AsyncAPI, Avro, JSON Schema, Protobuf, and contract-test artifacts.
- Configuration files and environment profiles.
- Database migration scripts, SQL, schemas, procedures, and test fixtures.
- Dockerfiles, Helm charts, Kubernetes/OpenShift resources, Terraform, CloudFormation, and AWS configuration.
- CI/CD workflows, code quality tools, security scans, deployment automation, and rollback configuration.
- Unit, integration, contract, security, and performance tests.
- Existing README and design documentation, validated against implementation.

# Evidence and Safety Rules

- Do not infer facts without repository evidence.
- Classify every material statement as `Confirmed`, `Strongly indicated`, `Assumption`, or `Gap`.
- Cite repository-relative files and, where practical, classes, methods, configuration keys, and manifest resources.
- Never expose credentials, tokens, certificates, keys, customer data, account numbers, production secrets, or confidential endpoints.
- Document secret-management mechanisms and references, but never values.
- Mark missing information as `Not identified in the repository` and include it in open questions.

# Required HTML Structure

1. Document control and evidence legend
2. Executive summary
3. Scope and repository analysis
4. Business and domain context
5. System context architecture
6. Application/container architecture
7. Service catalogue
8. Internal component architecture
9. End-to-end service flows
10. API and interface documentation
11. Input, output, and data flow
12. Critical business logic and decision tables
13. Data architecture and persistence layer
14. Entity relationship model
15. Data dictionary
16. Translation, mapping, and transformation matrix
17. Security architecture and trust boundaries
18. Encryption and data protection
19. Transaction management and consistency
20. Messaging and event architecture
21. Error handling and resilience
22. AWS architecture
23. OpenShift/Kubernetes architecture
24. Deployment topology
25. CI/CD and release process
26. Observability and operations
27. Non-functional characteristics
28. Testing and quality evidence
29. Architecture decisions and patterns
30. Risks, findings, and recommendations
31. Open questions and documentation gaps
32. Glossary
33. Source traceability appendix

# Mandatory Tables

Include at least:

- Component inventory
- Service catalogue
- API/interface inventory
- Input/output flow table
- Business-rule catalogue
- Entity/table catalogue
- Data dictionary
- Transformation matrix
- Security-control inventory
- Encryption-control inventory
- Runtime dependency inventory
- Test-to-business-rule traceability
- Findings and recommendations
- Source evidence index

# Mandatory Diagrams

Attempt to generate evidence-based Mermaid diagrams for:

1. System context
2. Application/container architecture
3. Internal component relationships
4. Overall processing flow
5. Critical sequence flows
6. Data-flow diagram
7. Entity-relationship diagram
8. Security/trust-boundary view
9. AWS deployment
10. OpenShift/Kubernetes deployment
11. CI/CD flow
12. Error-handling flow
13. Messaging/event flow, when present
14. Transaction sequence, when present

Every diagram must have a title, short explanation, consistent component names, and a legend where required. If evidence is insufficient, show a clearly marked gap instead of inventing a diagram.

# Business Logic Documentation

For each significant rule, capture:

- Rule identifier and name
- Business intent and trigger
- Preconditions and inputs
- Decision criteria or pseudocode
- Outcome and rejection conditions
- Transaction boundary
- Implementing class and method
- Related validation, exception, and tests
- Business impact

# Data Documentation

For each significant data entity or element, capture:

- Business and technical names
- Description and ownership
- Data type, size, nullability, constraints, and valid values
- Source and destination
- API/event usage
- Persistence location
- Validation and transformation
- Sensitivity classification
- Encryption, masking, hashing, or tokenization
- Evidence references

# HTML Requirements

- Single self-contained browser-viewable file with embedded CSS.
- Use embedded/local Mermaid support; do not depend on an unavailable external server.
- Include table of contents, responsive tables, print CSS, captions, status badges, severity badges, and searchable text.
- Include generation date, branch, and commit when available.
- Link to repository-relative evidence paths where practical.

# JSON Inventory

`docs/domain-service-inventory.json` must include service identity, build modules, deployable units, APIs, events, webhooks, databases, components, business rules, security controls, runtime dependencies, deployment resources, evidence, and confidence classifications.

# Completion Validation

Before completion, verify:

- Both output files exist.
- HTML is well formed and navigation works.
- Mermaid syntax is valid.
- Major APIs, components, data structures, business rules, and dependencies are covered.
- Current state and recommendations are clearly separated.
- Gaps and assumptions are explicit.
- No sensitive values appear.

Return a concise summary with modules analyzed, services, APIs, data stores, diagrams, business rules, findings by severity, gaps, and output paths.
