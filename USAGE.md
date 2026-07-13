# Usage Guide

## Operating Model

Use two documentation levels:

### Repository Level

The `domain-service-documentation` agent explains one codebase in detail: APIs, classes, business rules, data structures, transformations, security, deployment, and operations.

### Domain Ecosystem Level

The `domain-ecosystem-documentation` agent combines all related repositories into one current-state microservices architecture, including build-time, runtime, data, release, security, and failure dependencies.

## Recommended Workspace Strategy

Use a VS Code multi-root workspace with all domain repositories mounted as sibling folders. Place this package in either:

- A dedicated architecture/documentation repository included in the workspace; or
- The common workspace root, when your source-control model supports it.

## Execution Workflow

### Phase 1: Repository Discovery

Run the ecosystem agent first when repository membership is uncertain. Ask it to generate only a preliminary repository inventory and classification. Review exclusions and unknown repositories.

### Phase 2: Repository Documentation

Run the service agent for each deployable or technically significant repository. Shared libraries and infrastructure repositories may also be documented when they materially affect the domain.

### Phase 3: Domain Consolidation

Run the ecosystem agent after repository-level outputs exist. It should link to those HTML documents and use their JSON inventories as supporting evidence, while still validating relationships against source code and configuration.

### Phase 4: Human Review

Architecture, security, data, and service owners should review:

- Incorrect or missing repository membership
- Ambiguous service ownership
- Undocumented external integrations
- Data classification and retention assumptions
- Runtime names and environment mappings
- Version and deprecation status
- Failure handling, retry, and idempotency
- Security-control gaps

### Phase 5: Regeneration

Regenerate after major API, event, deployment, database, or business-rule changes. Include branch and commit identifiers in the generated document for traceability.

## Useful Prompt Variations

### Focus on Current State

Ask the agent to document current implementation only and place all target-state recommendations in a separate section.

### Focus on a Business Journey

Specify one journey such as `Retrieve Account Details`, `Freeze Account`, or `Publish Account Status Change` and request deeper sequence, data-flow, and failure analysis.

### Focus on Security

Request a comparison of authentication, token propagation, encryption, secrets, webhook signatures, and log masking across all repositories.

### Focus on Versions

Request a version map identifying active consumers, routing rules, translation layers, duplicate logic, compatibility, and deprecation evidence.

## Evidence Expectations

The agent should reference paths such as:

```text
account-service/src/main/java/.../AccountController.java
account-bff/src/main/java/.../AccountOrchestrator.java
account-contracts/openapi/account-v2.yaml
account-infrastructure/helm/account-service/values-prod.yaml
```

Relationships must not be accepted solely because repository or class names look similar.

## Handling Missing Information

The generated output should explicitly mark:

- `Not identified in the repository`
- `Assumption requiring owner confirmation`
- `Gap in available workspace evidence`

Do not permit the agent to invent production topology, SLAs, compliance status, data classification, or ownership.
