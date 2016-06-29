require 'serverspec'

# check if the guest account is disabled


# Required by serverspec
set :backend, :exec

describe port(80) do
  it { should be_listening }
end

describe port(81) do
  it { should_not be_listening }
end
