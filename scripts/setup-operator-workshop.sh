#!/bin/bash

#usage:
# bash <(curl -s https://gitlab.com/heungheung/wlsoprvm/-/raw/master/setup-operator-workshop.sh)
# bash <(curl -s https://raw.githubusercontent.com/nagypeter/vmcontrol/master/setup-operator-workshop.sh)
echo
echo "This scripts is to setup Cloud Shell for WLS Opr Workshop"
echo
# clone the wlsopr sample repo
echo "Entering script to clone git repo"
echo "=================================================="
curl -LSs https://raw.githubusercontent.com/kwanwan/weblogic-operator-tutorial/PowerShell/scripts/clone-weblogic-kubernetes-operator.sh | bash

echo "Entering script to get Helm"
echo "=================================================="
curl -LO https://raw.githubusercontent.com/kwanwan/weblogic-operator-tutorial/PowerShell/scripts/get_helm.sh
mkdir bin
chmod 700 get_helm.sh
./get_helm.sh

echo "Setup is complete for WebLogic Kubernetes Operator Workshop."
