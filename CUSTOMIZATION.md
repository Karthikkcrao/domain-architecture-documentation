# Customization Guide

## Change the Domain

Replace `Account` in the sample ecosystem prompt with the required domain, for example:

- Customer
- Payments
- Cards
- Lending
- Deposits
- Transactions

## Add Organization-Specific Sections

Extend the agent files with sections for:

- Internal architecture standards
- Approved AWS services
- OpenShift platform conventions
- API governance
- Event naming and schema governance
- Data classification taxonomy
- Regulatory controls
- Resilience tiers
- Technology lifecycle status
- Ownership and support models

## Add Required Metadata

Common additions include:

- Application ID
- Cost center
- Product owner
- Architecture owner
- Service owner
- Support group
- Business criticality
- Recovery tier
- Data classification
- Production region

## Change Output Locations

Update the `Required Output` or `Outputs` sections in the agent files. Keep repository and ecosystem outputs separate to avoid overwrites.

## Add Diagram Formats

Mermaid is the default because it works well in self-contained HTML. You may additionally require:

- PlantUML source
- C4-PlantUML
- Draw.io XML
- Structurizr DSL

Ensure the agent still validates the diagrams and does not introduce external dependencies that prevent offline viewing.

## Reduce Output Size

For very large domains, direct the ecosystem agent to:

- Generate a summary HTML plus one HTML per capability.
- Keep detailed inventories in JSON.
- Place source traceability in appendices.
- Split runtime diagrams by architectural layer or business journey.

## Add Quality Gates

Require the agent to fail completion when:

- A deployable repository has no runtime mapping.
- A public API has no owner or version.
- A sensitive data element has no classification.
- A critical synchronous dependency lacks timeout evidence.
- A webhook lacks authentication or idempotency evidence.
- A shared database is accessed by multiple services without ownership clarity.
