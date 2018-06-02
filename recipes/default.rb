# Cookbook::chef_base_linux
# Recipe::default

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
    gui_font: node['chef_base_linux']['vim']['gui_font'],
    background: node['chef_base_linux']['vim']['background'],
    color_scheme: node['chef_base_linux']['vim']['color_scheme']
    use_pathogen: node['chef_base_linux']['vim']['use_pathogen']
  )
end
