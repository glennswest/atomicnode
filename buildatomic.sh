docker rmi ranodes2i
docker build -f Dockerfile.atomic -t ranodes2i .
docker tag ranodes2i ctl.ncc9.com:5000/ranodes2i
docker push ctl.ncc9.com:5000/ranodes2i
