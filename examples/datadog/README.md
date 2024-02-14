## Install operators
- Require Subscription and OperatorGroup
- Look up operator catalog: `CatalogSource` in ns `openshift-marketplace`
  - Search for the operator name, this should show the PackageManifest, e.g. datadog-operator-certified
    - Note if the operator has `ALlNamespaces` as install mode: no need for operator-group to install as there is already a global operator group. The subscription is required for `openshift-operators` namespace
- Another option is to install the operator manually, then go to namespace > installed operators > click on the operator and go to yaml
## Links
- [Install operator from operator hub using cli] https://docs.openshift.com/container-platform/4.10/operators/admin/olm-adding-operators-to-cluster.html#olm-installing-operator-from-operatorhub-using-cli_olm-adding-operators-to-a-cluster