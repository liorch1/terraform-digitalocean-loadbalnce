Preparation Digitalocean and terraform


In Digitalocean create a read/write token so that you can manage the Digitalccean environment
*you can see the key only once, so store the key somewhere.

In the local machine you need passwordless ssh key for Digitalocean droplets
and the md5 of the ssh public key.

installed terraform (https://www.terraform.io/downloads.html)

the commend are:

1) terraform init

2) you need to change the variables according to your preparation. 

 terraform plan \
   -var "do_token=${DO_PAT}" \  
   -var "pub_key=$HOME/.ssh/digitalocean.pub" \
   -var "pvt_key=$HOME/.ssh/digitalocean" \
   -var "ssh_fingerprint=$SSH_FINGERPRINT"


3) also change the variables here.

 terraform apply \
   -var "do_token=${DO_PAT}" \
   -var "pub_key=$HOME/.ssh/digitalocean.pub" \
   -var "pvt_key=$HOME/.ssh/digitalocean" \
   -var "ssh_fingerprint=$SSH_FINGERPRINT"

