
rm /Users/mmartofe/.gcp/osServiceAccount.json

rm -rf ./manifest

./openshift-install create manifests --dir ./manifest --log-level debug

