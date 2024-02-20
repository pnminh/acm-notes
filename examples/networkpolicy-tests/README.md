# Network policies
## Scenarios
1. `app1` can curl to app in same namespace and in `app2` namespace
2. `app2` can curl to app in same namespace but not in `app1` namespace
3. `app2` can curl domains whitelisted by both egress policy and egress firewall
4. `app1` cannot curl domains whitelisted by Egress Firewall since they are not whitelisted in Egress Network Policies
5. `app2` cannot curl domains whitelisted by egress policies as there are Deny rules in Egress Firewall
   - By commenting out a rule for domain name, e.g. redhat.com, and do the curl to redhat.com both before and after
6. `user1` can only edit/delete policy names that are whitelisted
- `app-policy-1` can be edited/deleted
- `platform-deny-all-egress` cannot be edited/deleted
## Limitations
- Only 1 Egress Firewall resource can be set at one time
- Network Policies require explicit `Allow`, thus all `Allow` rules in `Egress Firewall` need to be there in `Egress Network Policies`
- Network Policies do not support domain names