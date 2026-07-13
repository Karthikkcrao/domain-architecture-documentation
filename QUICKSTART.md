# Quick Start

## 1. Copy the Package into the Workspace

Copy the `.github` directory and supporting documentation into the root of the multi-repository workspace or a dedicated architecture repository.

Minimum required files:

```text
.github/copilot-instructions.md
.github/agents/domain-service-documentation.agent.md
.github/agents/domain-ecosystem-documentation.agent.md
```

## 2. Open All Domain Repositories

Use a VS Code multi-root workspace so Copilot can inspect all relevant repositories.

Example:

```text
account-domain-workspace/
  account-service/
  account-service-v2/
  account-bff/
  account-webhook-service/
  account-event-processor/
  account-contracts/
  account-infrastructure/
  docs/
  .github/
```

A sample workspace file is available in `examples/sample-workspace.code-workspace`.

## 3. Generate Repository-Level Documentation

Open a specific repository and invoke the `domain-service-documentation` agent with the prompt in:

```text
examples/run-single-repository.prompt.md
```

Expected outputs:

```text
docs/domain-service-architecture.html
docs/domain-service-inventory.json
```

## 4. Generate the Consolidated Domain Architecture

From the workspace root, invoke the `domain-ecosystem-documentation` agent with the prompt in:

```text
examples/run-domain-ecosystem.prompt.md
```

Expected outputs:

```text
docs/domain-ecosystem-architecture.html
docs/domain-repository-inventory.json
```

## 5. Review the Outputs

Focus review on:

- Repository inclusion/exclusion
- Repository-to-runtime mapping
- Build-time versus runtime dependencies
- API and event versions
- BFF orchestration
- Webhook behavior
- Data ownership and shared database access
- Security and encryption boundaries
- Critical business-rule ownership
- Assumptions, gaps, and recommendations

## 6. Validate the Package

Run:

```bash
bash scripts/validate-package.sh
```

The script verifies the required instruction files, documentation, examples, and basic frontmatter.
