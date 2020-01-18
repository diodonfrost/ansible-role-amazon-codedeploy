control 'codedeploy-01' do
  impact 1.0
  title 'Amazon CodeDeploy service'
  desc 'Amazon CodeDeploy agent service should be started and enabled'
  describe service('codedeploy-agent') do
    it { should be_enabled }
    it { should be_running }
  end
end
