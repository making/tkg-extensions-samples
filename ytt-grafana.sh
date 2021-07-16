#!/bin/bash
set -ex
ytt \
  -f grafana.yaml \
  -f grafana/dashboards
