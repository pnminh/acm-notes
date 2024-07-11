#!/bin/bash

# Function to update kustomization.yaml file with the chosen scenario
update_kustomization() {
    local app_folder=$1
    local scenario=$2
    local kustomization_file="$app_folder/deploy/network-policies/kustomization.yaml"
    
    # Remove existing scenario line
    yq -i 'del(.resources[] | select(. == "scenario1/" or . == "scenario2/" or . == "scenario3/"))' $kustomization_file
    
    # Add the chosen scenario
    yq -i ".resources += [\"scenario$scenario/\"]" $kustomization_file
}

# Get user input for the scenario
echo "Choose a scenario (1, 2, or 3):"
read scenario

# Validate user input
if [[ "$scenario" =~ ^[1-3]$ ]]; then
    oc delete --ignore-not-found ns app1 
    oc delete --ignore-not-found ns app2
    # Update kustomization.yaml for app1 and app2
    update_kustomization "app1" "$scenario"
    update_kustomization "app2" "$scenario"
    
    echo "Updated kustomization.yaml files for app1 and app2 with scenario$scenario."
    oc apply -k app1/deploy
    oc apply -k app2/deploy
else
    echo "Invalid input. Please choose a scenario (1, 2, or 3)."
fi