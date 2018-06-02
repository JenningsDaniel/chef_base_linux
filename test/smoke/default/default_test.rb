# # encoding: utf-8

# Inspec test for recipe chef_base_linux::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/home/vagrant/.inputrc') do
  it { should exist }
  its('mode') { should cmp '0664' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe package('git') do
  it { should be_installed }
end

describe package('vim') do
  it { should be_installed }
  its('version') { should cmp >= '2:7' }
end

describe file('/home/vagrant/.vimrc') do
  it { should exist }
  its('mode') { should cmp '0664' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
  its('content') { should match(/set guifont=Hack:h9/) }
  its('content') { should match(/set background=light/) }
  its('content') { should match(/colorscheme solarized/) }
end
