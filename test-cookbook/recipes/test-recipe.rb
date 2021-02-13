#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file '/myfile2' do
  content 'Hello World! Good mrng'
  action :create
end

#execute "run a script" do
#  command <<-EOH
#  mkdir /sivadir
#  touch /sivafile
#  EOH
#end

user "raj" do
  action  :create
end

group "devops" do
  action :create
  members 'raj'
  append true
end

user "hari"
file "/harifile"
