#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user 'aafandi' do
  action :create
  comment "Aziz Ahmad Afandi"
  home "/home/aafandi"
  manage_home true
end

package 'irssi' do
  action :install
end

directory '/home/aafandi/.irssi' do
  owner 'aafandi'
  group 'aafandi'
end

cookbook_file '/home/aafandi/.irssi/config' do
  source 'irssi-config'
  owner 'aafandi'
  group 'aafandi'
end

