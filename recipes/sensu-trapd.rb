## Repo
include_recipe 'sensu-trapd::yumrepo'

## Install package
case node['platform_family']
when 'rhel'
  %w(python-sensu-trapd).each do |p|
    package(p)
  end
else
  platform = node['platform_family']
  puts "Platform #{platform} is not supported!"
end


## Create config directory
directory "/opt/sensu-trapd/conf" do
  mode 0755
  owner "root"
  group "root"
end

mib_dir = '/opt/sensu-trapd/conf/mibs'

## Install Mibs
remote_directory mib_dir do
  files_mode '0755'
  files_owner 'root'
  files_group 'root'
  mode '0755'
  owner 'root'
  group 'root'
  source "mibs"
  recursive true
  action :create
  overwrite true
end

## Service
service "httpd" do
    supports :restart => true, :status => true
    action [:enable]
end

## Configuration
template '/opt/sensu-trapd/conf/config.json' do
  source "config.json.erb"
  mode 0440
  owner "root"
  group "root"
  backup false
  notifies :restart, resources(:service => "sensu-trapd"), :delayed
end

template '/opt/sensu-trapd/conf/traps.json' do
  source "traps.json.erb"
  mode 0440
  owner "root"
  group "root"
  backup false
  notifies :restart, resources(:service => "sensu-trapd"), :delayed
end


