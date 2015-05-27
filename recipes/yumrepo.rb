##################################
# Author: Autumn Wang
# Copy right @ 2014 Autodesk Inc.
#

yum_repository 'sensu-trapd' do
  description node['yum']['sensu-trapd']['description']
  baseurl node['yum']['sensu-trapd']['baseurl']
  mirrorlist node['yum']['sensu-trapd']['mirrorlist']
  gpgcheck node['yum']['sensu-trapd']['gpgcheck']
  gpgkey node['yum']['sensu-trapd']['gpgkey']
  enabled node['yum']['sensu-trapd']['enabled']
  cost node['yum']['sensu-trapd']['cost']
  exclude node['yum']['sensu-trapd']['exclude']
  enablegroups node['yum']['sensu-trapd']['enablegroups']
  failovermethod node['yum']['sensu-trapd']['failovermethod']
  http_caching node['yum']['sensu-trapd']['http_caching']
  include_config node['yum']['sensu-trapd']['include_config']
  includepkgs node['yum']['sensu-trapd']['includepkgs']
  keepalive node['yum']['sensu-trapd']['keepalive']
  max_retries node['yum']['sensu-trapd']['max_retries']
  metadata_expire node['yum']['sensu-trapd']['metadata_expire']
  mirror_expire node['yum']['sensu-trapd']['mirror_expire']
  priority node['yum']['sensu-trapd']['priority']
  proxy node['yum']['sensu-trapd']['proxy']
  proxy_username node['yum']['sensu-trapd']['proxy_username']
  proxy_password node['yum']['sensu-trapd']['proxy_password']
  repositoryid node['yum']['sensu-trapd']['repositoryid']
  sslcacert node['yum']['sensu-trapd']['sslcacert']
  sslclientcert node['yum']['sensu-trapd']['sslclientcert']
  sslclientkey node['yum']['sensu-trapd']['sslclientkey']
  sslverify node['yum']['sensu-trapd']['sslverify']
  timeout node['yum']['sensu-trapd']['timeout']
  action :create
end
