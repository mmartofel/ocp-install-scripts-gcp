
# Provide your own pull secret file location
export pullsecret_file=./pull-secret.txt

rm /Users/mmartofe/.gcp/osServiceAccount.json

rm -rf ./manifest

./openshift-install create manifests --dir ./manifest --log-level debug

