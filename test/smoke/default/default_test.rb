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
    its('owner') { should eq 'vagrant'}
    its('group') { should eq 'vagrant'}
    its('content') { should match /set guifont=Hack:h9/ }
end

describe file('/home/vagrant/.vim/autoload/pathogen.vim') do
    it { should exist }
end

describe file('/home/vagrant/.vim/bundle/ctrlp.vim') do
    it { should exist }
    it { should be_directory }
end

describe file('/home/vagrant/.vim/bundle/nerdtree') do
    it { should exist }
    it { should be_directory }
end

describe file('/home/vagrant/.vim/bundle/vim-surround') do
    it { should exist }
    it { should be_directory }
end

describe file('/home/vagrant/.vim/bundle/vim-sensible') do
    it { should exist }
    it { should be_directory }
end

