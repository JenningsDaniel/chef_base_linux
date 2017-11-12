# Inspec test for recipe chef_base_linux::tmux

describe package('tmux') do
  it { should be_installed }
end

describe file('/home/vagrant/.tmux.conf') do
  it { should exist }
  its('mode') { should cmp '0664' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
  its('content') { should match /colors-solarized 'dark'/ }
end

describe file('/home/vagrant/.tmux') do
  it { should exist }
  it { should be_directory }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe file('/home/vagrant/.tmux/plugins') do
  it { should exist }
  it { should be_directory }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe file('/home/vagrant/.tmux/plugins/tpm') do
  it { should exist }
  it { should be_directory }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end
