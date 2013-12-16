# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'serf::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs unzip' do
    expect(chef_run).to install_package('unzip')
  end

  it 'grabs the serf dist file' do
    expect(chef_run).to create_remote_file('/tmp/0.3.0_linux_amd64.zip')
  end

  it 'creates the config directory' do
    expect(chef_run).to create_directory('/etc/serf')
  end

  it 'creates the config file' do
    expect(chef_run).to create_remote_file('/etc/default/serf')
  end

  it 'creates the upstart file' do
    expect(chef_run).to create_remote_file('/etc/init/serf.conf')
  end

  it 'creates the logrotate file' do
    expect(chef_run).to create_remote_file('/etc/logrotate.d/serf')
  end

  it 'enables the serf service' do
    expect(chef_run).to enable_service('serf')
  end

  it 'starts the serf service' do
    expect(chef_run).to start_service('serf')
  end

end
