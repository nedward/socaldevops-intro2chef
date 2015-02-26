#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'apache2' do
	action :install
end

template '/var/www/html/index.html' do
	source 'index.html.erb'
	owner 'root'
	group 'root'
	mode '0644'
	variables ({
		:platform => node['platform'],
		:platform_version => node['platform_version'],
		:running_on => node['virtualization']['system'],
		:localip => node['ipaddress']
		})
end

# file '/var/www/html/index.html' do
# 	action :create
# 	content 'Hello, at least I work'
# 	owner 'root'
# 	group 'root'
# 	mode '0644'
# end

service 'apache2' do
	supports :status => true, :restart => true, :reload => true
	action [ :start, :enable ]
end























































































































































