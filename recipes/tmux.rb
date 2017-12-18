#
# Cookbook:: chef_base_linux
# Recipe:: tmux
#

package 'tmux'

template "#{node['chef_base_linux']['home']}/.tmux.conf" do
  source 'tmux.conf.erb'
  owner node['chef_base_linux']['owner']
  group node['chef_base_linux']['group']
  mode  '0664'
  variables(
    color_scheme_variant:
      node['chef_base_linux']['tmux']['color_scheme_variant']
  )
end

directory "#{node['chef_base_linux']['home']}/.tmux" do
  owner node['chef_base_linux']['owner']
  group node['chef_base_linux']['group']
end

directory "#{node['chef_base_linux']['home']}/.tmux/plugins" do
  owner node['chef_base_linux']['owner']
  group node['chef_base_linux']['group']
end

directory "#{node['chef_base_linux']['home']}/.tmux/plugins/tpm" do
  owner node['chef_base_linux']['owner']
  group node['chef_base_linux']['group']
end

git 'tpm' do
  action :checkout
  repository 'https://github.com/tmux-plugins/tpm'
  destination "#{node['chef_base_linux']['home']}/.tmux/plugins/tpm"
  group node['chef_base_linux']['group']
end
