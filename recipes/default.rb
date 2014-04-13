# encoding: utf-8
#
# Cookbook Name:: serf
# Recipe:: default
#
# Copyright (C) 2013, Darron Froese <darron@froese.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package 'unzip'

remote_file node['serf']['tmp'] do
  source node['serf']['url']
  checksum node['serf']['checksum']
  owner 'root'
  group 'root'
  mode 00755
  not_if { ::File.exist?(node['serf']['tmp']) }
end

bash 'extract_serf' do
  cwd ::File.dirname(node['serf']['tmp'])
  code <<-EOH
    unzip #{node['serf']['filename']}
    mv serf #{node['serf']['destination']}
    EOH
  not_if { ::File.exist?(node['serf']['destination']) }
end

directory node['serf']['config_dir'] do
  owner 'root'
  group 'root'
  mode 0755
  action :create
end

remote_file node['serf']['config_file_path'] do # ~FC005
  source node['serf']['config_file']
  owner 'root'
  group 'root'
  mode 00644
  action :create
end

remote_file node['serf']['upstart_file_path'] do
  source node['serf']['upstart_file']
  owner 'root'
  group 'root'
  mode 00644
  action :create
end

link '/etc/init.d/serf' do
  to '/lib/init/upstart-job'
end

remote_file node['serf']['logrotate_file_path'] do
  source node['serf']['logrotate_file']
  owner 'root'
  group 'root'
  mode 00644
  action :create
end

service 'serf' do
  action [:enable, :start]
end
