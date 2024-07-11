# Network policies
## Scenarios
Common use case:
1. `app1` can curl to app in same namespace and in `app2` namespace
2. `app2` can curl to app in same namespace but not in `app1` namespace
Scenario 1:
- `app2` can curl external domains whitelisted egress policy: redhat.com and aws.amazon.com. Note: `Network policies` only allows IP ranges and not domain. Egress firewall can be used instead.
- `app1` cannot curl external domains as egress policy denies by default
Scenario 2:
- `app1` and `app2` can curl external domains if they have allow all egress policy
Scenario 3:
- `app1` and `app2` even ave have allow all egress policy but limitted to only domains allowed by EgressFirewall
## Limitations
- Only 1 Egress Firewall resource can be set at one time
- Network Policies require explicit `Allow`, thus all `Allow` rules in `Egress Firewall` need to be there in `Egress Network Policies`
- Network Policies do not support domain names