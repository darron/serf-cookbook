# encoding: utf-8
#
# Cookbook Name:: serf
# Attributes:: default
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

default['serf']['filename'] = '0.4.0_linux_amd64.zip'
default['serf']['url'] = "https://dl.bintray.com/mitchellh/serf/#{default['serf']['filename']}"
default['serf']['checksum'] = '522ed4531b59f530d2a9e8f3d429a9dd2345e002316651abfc251bb1eb7266c0'
default['serf']['tmp'] = "/tmp/#{default['serf']['filename']}"
default['serf']['destination'] = '/usr/local/bin/serf'

default['serf']['config_dir'] = '/etc/serf'
default['serf']['config_file'] = 'https://raw.github.com/octohost/octohost/master/config/serf.default'
default['serf']['config_file_path'] = '/etc/default/serf'

default['serf']['upstart_file'] = 'https://raw.github.com/octohost/octohost/master/config/serf.conf'
default['serf']['upstart_file_path'] = '/etc/init/serf.conf'

default['serf']['logrotate_file'] = 'https://raw.github.com/octohost/octohost/master/config/serf.logrotate'
default['serf']['logrotate_file_path'] = '/etc/logrotate.d/serf'
