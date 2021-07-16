#!/bin/bash
set -ex
ytt \
  -f prometheus.yaml \
   --data-value-file prometheus_yaml=prometheus/prometheus.yaml \
   --data-value-file alerting_rules_yaml=prometheus/alerting_rules.yaml \
