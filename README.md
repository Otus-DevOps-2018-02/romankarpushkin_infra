# romankarpushkin_infra
romankarpushkin Infra repository

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

