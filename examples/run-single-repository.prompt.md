# Sample Prompt: Single Repository

Use the `domain-service-documentation` agent.

Analyze the complete current repository and generate:

- `docs/domain-service-architecture.html`
- `docs/domain-service-inventory.json`

Trace the implementation across Java/Spring source, APIs, business services, domain rules, repositories, entities, migrations, mappings, integrations, messaging, webhooks, security, encryption, AWS/OpenShift deployment, CI/CD, observability, and tests.

Document only evidence-supported behavior. Mark every important statement and relationship as Confirmed, Strongly indicated, Assumption, or Gap. Reference repository-relative source paths and implementation methods where practical.

Include all required architecture diagrams, sequence diagrams, data-flow diagrams, entity relationships, component inventories, API contracts, business-rule traceability, data dictionary, transformation matrix, security controls, failure handling, findings, recommendations, and open questions.

Validate HTML structure, internal navigation, Mermaid syntax, evidence references, and sensitive-data masking before completion.
