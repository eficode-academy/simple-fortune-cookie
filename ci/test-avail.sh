#!/bin/bash
docker-compose -f dev-go-compose.yml up -d
sleep 30
curl http://inst52.z1.eficode.academy:8080/