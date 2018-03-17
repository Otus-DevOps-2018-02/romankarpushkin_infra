# romankarpushkin_infra
romankarpushkin Infra repository


## Homework 04
To connect to someinternalhost over bastion host using 'ssh someinternalhost' 
add following code to ~/.ssh/config file:

Host bastion
        Hostname %bastion_external_ip%
        User appuser

Host someinternalhost
        User appuser
        ProxyCommand ssh -q bastion nc -q0 %h 22


bastion_IP = 35.204.130.174
someinternalhost_IP = 10.164.0.3

## Homework05

testapp_IP = 35.205.252.123
testapp_port = 9292

Command to spinup new instance with local startup script:
$ gcloud compute instances create reddit-app-deploy  --boot-disk-size=10GB  --image-family ubuntu-1604-lts  --image-project=ubuntu-os-cloud  --machine-type=g1-small  --tags puma-server  --metadata-from-file startup-script=startup_script.sh

Command to spinup new instance with startup script in GCP bucket:
$ gcloud compute instances create reddit-app-deploy  --boot-disk-size=10GB  --image-family ubuntu-1604-lts  --image-project=ubuntu-os-cloud  --machine-type=g1-s
mall  --tags puma-server  --scopes storage-ro --metadata startup-script-url=gs://otus/startup_script.sh

Command to create GCP firewall rule:
$ gcloud compute firewall-rules create default-puma-server --allow tcp:9292 --source-ranges=0.0.0.0/0 --target-tags=puma-server

