require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe package('openssh-client'), :if => ['alpine', 'debian'].include?(os[:family]) do
  it { should be_installed }
end

describe command('which ssh') do
  its(:exit_status) { should eq 0 }
end
