require 'spec_helper'

describe package('yum-security')  do
  it { should be_installed }
end

describe package('yum-cron')  do
  it { should be_installed }
end

describe service('yum-cron') do
  it { should be_enabled }
  it { should be_running }
end
