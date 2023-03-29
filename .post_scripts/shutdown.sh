#!/bin/bash
# Shutdown the cluster
nodes=$(./oc get nodes -o jsonpath='{.items[*].metadata.name}')
for node in ${nodes[@]}
do
    echo "==== Shut down $node ===="
    ssh core@$node -i sshkey sudo shutdown -h 1
done

