# Network policies
## Scenario
## Prerequisites
- Egress policies required for 
1. App can talk to 
1. App1 can talk to app2, but not vice versa
2. App1 not able to access any addresses not listed in Egress network policies, even they are listed in Egress Firewall
3. App2 has allow-all network policies

## Limitations
- Network Policies require explicit `Allow`, thus all `Allow` rules in `Egress Firewall` need to be there in `Egress Network Policies`