#!/bin/bash

curl -sfL <https://get.k3s.io> | sh -

k3s kubectl get pods --all-namespaces