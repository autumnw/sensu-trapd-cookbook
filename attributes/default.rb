##############
# yum repo
default['yum']['sensu-trapd']['description'] = "Sensu-trapd REPO"
default['yum']['sensu-trapd']['baseurl'] = "http://yum.wcdc.staging.adskengineer.net/yum/sensu-trapd"
default['yum']['sensu-trapd']['enabled'] = true
default['yum']['sensu-trapd']['gpgcheck'] = false
  
# Sensu trapd
default['sensutrapd']['daemon']['log_file'] = "/var/log/sensu-trapd/sensu-trapd.log"
default['sensutrapd']['daemon']['log_level'] = "DEBUG"

default['sensutrapd']['snmp']['transport']['listen_address'] = '0.0.0.0'
default['sensutrapd']['snmp']['transport']['listen_port'] = 162
default['sensutrapd']['snmp']['auth']['v2']['community'] = 'public'
default['sensutrapd']['snmp']['auth']['v3']['sensutrap']['authentication_passwd'] = 'myAuthSecret'
default['sensutrapd']['snmp']['auth']['v3']['sensutrap']['privacy_passwd'] = 'myPrivSecret'

 