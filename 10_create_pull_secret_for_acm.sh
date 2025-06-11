# Before we install RHACM operator we need to create pull secret for other K8S cluster.
# Following article explains how to import an EKS cluster into RHACM but its also relevant for AKS:
# https://www.redhat.com/en/blog/how-to-import-an-amazon-eks-cluster-into-red-hat-advanced-cluster-management
# Important to notice is that after we install ACM operator, AND! before we instantiate MultiClusterHub we must switch to the open-cluster-management namespace and create pull secret:


oc create secret generic acm-pull-secret \
  --from-file=.dockerconfigjson=pull-secret.txt \
  --type=kubernetes.io/dockerconfigjson \
  -n open-cluster-management
