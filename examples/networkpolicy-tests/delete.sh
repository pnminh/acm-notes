oc delete -k examples/networkpolicy-tests/app2/roles #delete role and rolebinding restricting user
oc delete -k examples/networkpolicy-tests/app1/deploy
oc delete -k examples/networkpolicy-tests/app2/deploy