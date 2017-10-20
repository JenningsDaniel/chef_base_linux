#
# Cookbook:: chef_base_linux
# Recipe:: default
#

template "#{node['chef-base-linux']['home']}/.inputrc" do
    source 'inputrc.erb'
    owner node['chef-base-linux']['owner']
    group node['chef-base-linux']['group']
    mode  '0664'
end
