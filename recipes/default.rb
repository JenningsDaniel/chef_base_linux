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

git_client 'default' do
    action :install
end

include_recipe 'vim'

pathogen_base 'install pathogen!' do
    users [node['chef-base-linux']['owner']]
end

pathogen_plugin 'ctrlp.vim' do
    github_org 'kien'
    users [node['chef-base-linux']['owner']]
end

pathogen_plugin 'nerdtree' do
    github_org 'scrooloose'
    users [node['chef-base-linux']['owner']]
end

pathogen_plugin 'vim-surround' do
    github_org 'tpope'
    users [node['chef-base-linux']['owner']]
end
