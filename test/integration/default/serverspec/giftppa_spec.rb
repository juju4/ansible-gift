require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins
#require 'yarjuf'
#RSpec.configure do |c|
#    c.formatter = 'JUnit'
#end

describe file('/etc/apt/sources.list.d/ppa_gift_stable_*.list'), :if => os[:family] == 'ubuntu' do
  it { should exist }
  its(:content) { should match /deb http:\/\/ppa.launchpad.net\/gift\/stable\/ubuntu / }
end
