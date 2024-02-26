yq '(del(.status) | .metadata.labels |= with_entries(select(.key == "prometheus" or .key == "role")))'  prometheus-rules.yaml -i
yq '(del(.status) | .metadata |= with_entries(select(.key == "name" or .key == "labels")))'  prometheus-rules.yaml -i
yq '.metadata.labels.prometheus = "user-workload"' prometheus-rules.yaml -i
yq  '.metadata.name = "user-workload-" + .metadata.name' prometheus-rules.yaml -i