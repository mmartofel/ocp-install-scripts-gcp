# Provide your own pull secret file location
export PULL_SECRET=`cat ./pull-secret.txt`
# export GOOGLE_CREDENTIALS=./gcp_service_account.json

rm /Users/mmartofe/.gcp/osServiceAccount.json

# My installation dir is ./config so I need to purge this one
rm -rf ./config
# My cluster name at simple install is firstgcp so I need to remove it before config cleation as well
rm -rf ./firstgcp

./openshift-install create cluster --dir ./firstgcp --log-level debug

