require 'spec_helper'

describe 'apache' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
  it 'is installed' do
    expect(package 'apache2').to be_installed
  end

  it 'is running' do
    expect(service 'apache2').to be_running
  end


  it 'is listening on port 80' do
    expect(port 80).to be_listening
  end
end

describe file('/var/www/html/index.html') do
  it "has the correct content" do
    expect(subject.content).to match(/Hello/)
  end
end
