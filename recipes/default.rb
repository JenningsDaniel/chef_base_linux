#
# Cookbook:: chef_base_linux
# Recipe:: default
#

template "#{node['chef_base_linux']['home']}/.inputrc" do
    source 'inputrc.erb'
    owner node['chef_base_linux']['owner']
    group node['chef_base_linux']['group']
    mode  '0664'
end

git_client 'default' do
    action :install
end

include_recipe 'vim'

template "#{node['chef_base_linux']['home']}/.vimrc" do
    source 'vimrc.erb'
    owner node['chef_base_linux']['owner']
    group node['chef_base_linux']['group']
    mode  '0664'
    variables(
        :gui_font => node['chef_base_linux']['vim']['gui_font']
    )
end

pathogen_base 'install pathogen!' do
    users [node['chef_base_linux']['owner']]
end

directory "#{node['chef_base_linux']['home']}/.vim" do
    owner node['chef_base_linux']['owner']
    group node['chef_base_linux']['group']
end

directory "#{node['chef_base_linux']['home']}/.vim/autoload" do
    owner node['chef_base_linux']['owner']
    group node['chef_base_linux']['group']
end

directory "#{node['chef_base_linux']['home']}/.vim/bundle" do
    owner node['chef_base_linux']['owner']
    group node['chef_base_linux']['group']
end

file "#{node['chef_base_linux']['home']}/.vim/autoload/pathogen.vim" do
    owner node['chef_base_linux']['owner']
    group node['chef_base_linux']['group']
end

pathogen_plugin 'ctrlp.vim' do
    github_org 'kien'
    users [node['chef_base_linux']['owner']]
end

directory "#{node['chef_base_linux']['home']}/.vim/bundle/ctrlp.vim" do
    owner node['chef_base_linux']['owner']
    group node['chef_base_linux']['group']
end

pathogen_plugin 'nerdtree' do
    github_org 'scrooloose'
    users [node['chef_base_linux']['owner']]
end

directory "#{node['chef_base_linux']['home']}/.vim/bundle/nerdtree" do
    owner node['chef_base_linux']['owner']
    group node['chef_base_linux']['group']
end

pathogen_plugin 'vim-surround' do
    github_org 'tpope'
    users [node['chef_base_linux']['owner']]
end

directory "#{node['chef_base_linux']['home']}/.vim/bundle/vim-surround" do
    owner node['chef_base_linux']['owner']
    group node['chef_base_linux']['group']
end

pathogen_plugin 'vim-sensible' do
    github_org 'tpope'
    users [node['chef_base_linux']['owner']]
end

directory "#{node['chef_base_linux']['home']}/.vim/bundle/vim-sensible" do
    owner node['chef_base_linux']['owner']
    group node['chef_base_linux']['group']
end

include_recipe 'chef_base_linux::tmux'
