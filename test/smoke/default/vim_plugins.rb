
describe directory('/home/vagrant/.vim') do
  it { should exist }
  its('mode') { should cmp '0755' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe directory('/home/vagrant/.vim/autoload') do
  it { should exist }
  its('mode') { should cmp '0755' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe directory('/home/vagrant/.vim/bundle') do
  it { should exist }
  its('mode') { should cmp '0755' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe file('/home/vagrant/.vim/autoload/pathogen.vim') do
  it { should exist }
  its('mode') { should cmp '0755' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe file('/home/vagrant/.vim/bundle/ctrlp.vim') do
  it { should exist }
  it { should be_directory }
  its('mode') { should cmp '0755' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe file('/home/vagrant/.vim/bundle/nerdtree') do
  it { should exist }
  it { should be_directory }
  its('mode') { should cmp '0755' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe file('/home/vagrant/.vim/bundle/vim-surround') do
  it { should exist }
  it { should be_directory }
  its('mode') { should cmp '0755' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe file('/home/vagrant/.vim/bundle/vim-sensible') do
  it { should exist }
  it { should be_directory }
  its('mode') { should cmp '0755' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe file('/home/vagrant/.vim/bundle/vim-colors-solarized') do
  it { should exist }
  it { should be_directory }
  its('mode') { should cmp '0755' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe directory('/home/vagrant/.vim/after') do
  it { should exist }
  its('mode') { should cmp '0755' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe directory('/home/vagrant/.vim/after/ftplugin') do
  it { should exist }
  its('mode') { should cmp '0755' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end

describe file('/home/vagrant/.vim/after/ftplugin/ruby.vim') do
  it { should exist }
  its('mode') { should cmp '0664' }
  its('owner') { should eq 'vagrant' }
  its('group') { should eq 'vagrant' }
end
