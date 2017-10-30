#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform_family'] == "centos"
package = "httpd"

elseif node['platform_family'] == "debian"
package ="apache2"
end
 package 'apache2' do
   package_name package
   action :install
end

service 'apa che2' do 
  service_name 'httpd'
    action [:start, :enable]
end


