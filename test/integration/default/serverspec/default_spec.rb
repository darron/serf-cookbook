# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'serf::default' do
  describe service('serf') do
    it { should be_enabled }
    it { should be_running }
  end
end
