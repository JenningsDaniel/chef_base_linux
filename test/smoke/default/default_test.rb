# # encoding: utf-8

# Inspec test for recipe chef_base_linux::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/home/vagrant/.inputrc') do
    it { should exist }
    its('mode') { should cmp '0664' }
    its('owner') { should eq 'vagrant'}
    its('group') { should eq 'vagrant'}
end
