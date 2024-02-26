#!/bin/bash

# Set the namespace
NAMESPACE="openshift-monitoring"

# Retrieve PrometheusRule CRs in the namespace
CRS=$(kubectl get prometheusrule -n "$NAMESPACE" -o jsonpath='{.items[*].metadata.name}')

# Loop through each CR and output it into a separate YAML file
for CR in $=CRS; do
    kubectl get prometheusrule "$CR" -n "$NAMESPACE" -o yaml >> "prometheus-rules.yaml"
    echo "---" >> "prometheus-rules.yaml"
done