source scripts/env.sh

ibmcloud login -r eu-de --apikey $APIKEY

tmp=$(mktemp)

envsubst < manifest/application.yaml >> $tmp

cat $tmp

ibmcloud ks cluster config -c $CLUSTER_NAME
kubectl apply -f $tmp



