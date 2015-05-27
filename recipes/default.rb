#
# Cookbook Name:: sensu-trapd
# Recipe:: default
#
# Copyright (C) 2015 
#
# 
#

include_recipe 'iaas-sensu-clients::default'
inclue_recipe 'sensu-trapd::sensu-trapd'


