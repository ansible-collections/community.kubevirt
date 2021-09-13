#!/usr/bin/env bash

set -eux

# TODO: quay.io/ansible/default-test-container:2.7.0 doesn't have virtualenv included
apt -y update
apt -y install python3-virtualenv

source virtualenv.sh
pip install --upgrade kubernetes

./server.py &

cleanup() {
  kill -9 "$(jobs -p)"
}

trap cleanup INT TERM EXIT

# Fake auth file
mkdir -p ~/.kube/
cat <<EOF > ~/.kube/config
apiVersion: v1
clusters:
- cluster:
    insecure-skip-tls-verify: true
    server: http://localhost:12345
  name: development
contexts:
- context:
    cluster: development
    user: developer
  name: dev-frontend
current-context: dev-frontend
kind: Config
preferences: {}
users:
- name: developer
  user:
    token: ZDNg7LzSlp8a0u0fht_tRnPMTOjxqgJGCyi_iy0ecUw
EOF

#################################################
#   RUN THE PLUGIN
#################################################

# run the plugin second
export ANSIBLE_INVENTORY_ENABLED=community.kubevirt.kubevirt
export ANSIBLE_INVENTORY=test.kubevirt.yml

cat << EOF > "$OUTPUT_DIR/test.kubevirt.yml"
plugin: community.kubevirt.kubevirt
connections:
  - namespaces:
      - default
EOF

ANSIBLE_JINJA2_NATIVE=1 ansible-inventory -vvvv -i "$OUTPUT_DIR/test.kubevirt.yml" --list --output="$OUTPUT_DIR/plugin.out"

#################################################
#   DIFF THE RESULTS
#################################################

./inventory_diff.py "$(pwd)/test.out" "$OUTPUT_DIR/plugin.out"
