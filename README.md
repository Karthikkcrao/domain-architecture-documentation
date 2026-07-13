# Banking Domain Architecture Documentation Package for GitHub Copilot

This package provides reusable GitHub Copilot instructions and specialized agents for generating:

1. Detailed architecture documentation for each Java/Spring banking service repository.
2. A consolidated domain-level architecture that connects all related repositories, runtime services, BFFs, webhooks, versions, events, data stores, infrastructure, and deployment dependencies.

## Package Contents

```text
.github/
  copilot-instructions.md
  agents/
    domain-service-documentation.agent.md
    domain-ecosystem-documentation.agent.md
docs/
  README.md
examples/
  sample-workspace.code-workspace
  run-single-repository.prompt.md
  run-domain-ecosystem.prompt.md
  account-domain-example.md
scripts/
  validate-package.sh
QUICKSTART.md
USAGE.md
CUSTOMIZATION.md
README.md
```

## Generated Outputs

For each service repository:

```text
<repository>/docs/domain-service-architecture.html
<repository>/docs/domain-service-inventory.json
```

For the complete domain workspace:

```text
<workspace-root>/docs/domain-ecosystem-architecture.html
<workspace-root>/docs/domain-repository-inventory.json
```

## Recommended Execution Order

1. Open all repositories for the domain in a VS Code multi-root workspace.
2. Run the single-repository agent in each repository.
3. Verify or refine the repository-level documents.
4. Run the domain-ecosystem agent from the workspace root.
5. Review gaps, assumptions, cross-repository dependencies, and architecture findings.
6. Commit the generated HTML and JSON outputs or publish them through the documentation pipeline.

## Design Principles

- Evidence-based and traceable to code/configuration.
- Build-time and runtime dependencies documented separately.
- Repository, artifact, deployment, and runtime boundaries distinguished.
- Banking data and secret values protected.
- Current state separated from recommendations.
- HTML outputs suitable for architecture review, onboarding, audit support, and operational understanding.

See [QUICKSTART.md](QUICKSTART.md) for installation and first use.
