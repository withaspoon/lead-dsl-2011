require 'developer'
require 'matchers/know'

describe LeadDeveloper do
  let(:developer) { LeadDeveloper.new(:company => "Oracle", :language => "Java") }
  
  it "should work at a company" do
    developer.company.should == "Oracle"
  end
  
  it "should know a programming language" do
    developer.should know "Java"
  end
  
  it "should learn new programming languages" do
    developer.learn "Ruby"
    developer.should know "Java", "Ruby"
  end
  
  it "should not know every programming language" do
    developer.should_not know "C++"
  end
end
