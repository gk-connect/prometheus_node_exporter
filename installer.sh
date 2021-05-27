#!/bin/bash
sudo useradd --no-create-home node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.1.2/node_exporter-1.1.2.linux-amd64.tar.gz
tar xzf node_exporter-1.1.2.linux-amd64.tar.gz
sudo rm node_exporter-1.1.2.linux-amd64.tar.gz
sudo mv node_exporter-1.1.2.linux-amd64  /usr/local/bin/node_exporter
sudo cp node-exporter.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable node-exporter
sudo systemctl start  node-exporter
sudo systemctl status node-exporter