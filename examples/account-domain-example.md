# Example: Account Domain Repository Landscape

This example illustrates the type of workspace the ecosystem agent can analyze.

```text
account-domain-workspace/
  account-service/
  account-service-v2/
  account-balance-service/
  account-bff-mobile/
  account-bff-web/
  account-webhook-service/
  account-event-processor/
  account-batch-service/
  account-data-service/
  account-external-adapter/
  account-contracts/
  account-domain-model/
  account-infrastructure/
  account-deployment/
  account-component-tests/
  account-simulator/
```

## Example Relationships the Agent Should Verify

| Source | Target | Potential relationship | Evidence required |
|---|---|---|---|
| Mobile BFF | Account Service v2 | Runtime REST call | Client code, endpoint config, OpenAPI contract |
| Account Service | Account Contracts | Build/contract dependency | Maven/Gradle dependency or generated source configuration |
| Account Service | Account Event Processor | Event relationship | Producer topic and consumer subscription |
| Webhook Service | External Consumer | Outbound webhook | Registration, signature, payload, retry configuration |
| Account Service v1 | Account Service v2 | Version coexistence or migration | Routing, adapters, shared data, consumer configuration |
| Multiple services | Account database | Shared data dependency | Datasource/schema/table references |
| Infrastructure repo | Runtime services | Deployment dependency | Helm/Terraform/image references |

## Example Critical Journey

`Retrieve Account Details` may involve:

1. Web channel calls the Web BFF.
2. BFF validates the request and propagates identity.
3. BFF calls Account Service v2 and Balance Service.
4. Services read owned or shared data stores.
5. BFF aggregates and transforms responses.
6. Errors are translated into a channel-specific response.

The agent must confirm each step from code and configuration rather than assume this flow.
