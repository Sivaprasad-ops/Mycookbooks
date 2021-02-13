#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'tree' do
  action :install
end

file '/myfile2' do
  content 'This is my second file'
  action :create
  owner 'root'
  group 'root'
end

%w(httpd mariadb-server unzip git vim).each do |p|
  package p do
    action :install
  end
end 

%w(SIVA HARI RAJ RAHUL  ROHIT).each do |p|
  user p do
    action :create
  end
end
