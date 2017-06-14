# RHEL ATOMIC NODEJS Minimal Image


## Restarting with Insecure Registry
minishift stop 
minishift delete
minishift start --insecure-registry 172.30.0.0/16 --insecure-registry ctl.ncc9.com:5000

## INstalling Image Stream
oc create -n openshift -f https://raw.githubusercontent.com/glennswest/atomicnode/master/ranodes2i.json

