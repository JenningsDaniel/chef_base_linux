# Cookbook::chef_base_linux
# Recipe::vim_plugin

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

git "#{node['chef_base_linux']['home']}/.vim/bundle/vim-colors-solarized" do
  repository 'git://github.com/altercation/vim-colors-solarized.git'
  action :checkout
  user node['chef_base_linux']['owner']
  group node['chef_base_linux']['group']
end

directory "#{node['chef_base_linux']['home']}/.vim/after" do
  owner node['chef_base_linux']['owner']
  group node['chef_base_linux']['group']
end

directory "#{node['chef_base_linux']['home']}/.vim/after/ftplugin" do
  owner node['chef_base_linux']['owner']
  group node['chef_base_linux']['group']
end

template "#{node['chef_base_linux']['home']}/.vim/after/ftplugin/ruby.vim" do
  source 'ruby.vim.erb'
  owner node['chef_base_linux']['owner']
  group node['chef_base_linux']['group']
  mode  '0664'
end
