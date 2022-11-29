#!/bin/bash
export IMAGE_ID=${terraform output IMAGE_ID}
export INTERNET_GATEWAY_ID=${terraform output INTERNET_GATEWAY_ID}
export KUBERNETES_PUBLIC_ADDRESS=${terraform output KUBERNETES_PUBLIC_ADDRESS}
export LOAD_BALANCER_ARN=${terraform output LOAD_BALANCER_ARN}
export ROUTE_TABLE_ID=${terraform output ROUTE_TABLE_ID}
export SECURITY_GROUP_ID=${terraform output SECURITY_GROUP_ID}
export SUBNET_ID=${terraform output SUBNET_ID}
export TARGET_GROUP_ARN=${terraform output TARGET_GROUP_ARN}
export VPC_ID=${terraform output VPC_ID}
