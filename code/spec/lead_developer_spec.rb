require 'developer'

RSpec::Matchers.define :know do |language|
  match do |developer|
    developer.language.split(", ").any? { |l| l == language }
  end
end

describe LeadDeveloper do
  let(:developer) { LeadDeveloper.new(:company => "Oracle", :language => "Java") }
  
  it "should work at a company" do
    developer.company.should == "Oracle"
  end
  
  it "should know a programming language" do
    developer.language.should == "Java"
  end
  
  it "should learn new programming languages" do
    developer.learn "Ruby"
    developer.should know "Ruby"
  end
end
