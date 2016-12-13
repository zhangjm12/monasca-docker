#!/usr/bin/env bash

kubectl create -f namespace.yml
kubectl create -f glusterfs.yml
kubectl create -f influx/
kubectl create -f keystone/
kubectl create configmap --from-file mysql/mon_mysql.sql mon.mysql -n monitoring
kubectl create -f mysql/
kubectl create -f zookeeper/
kubectl create -f kafka/
kubectl create -f storm/
kubectl create -f monasca/
kubectl create -f monasca-python/
kubectl create -f grafana/
