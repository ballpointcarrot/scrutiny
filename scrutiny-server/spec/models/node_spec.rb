require 'spec_helper'

describe Node do
  context "that isn't complete" do
    subject(:node) { Node.new() }
    [:name, :key].each do |attrib|
      it "requires a #{attrib}" do
        node.valid?
        node.errors[attrib].should_not == []
      end
    end
  end
  context "that is fully set up" do
    subject(:node) {Node.new(:name => "Test Name", :key => "123481234")}
    [:name, :key].each do |attrib|
      it "requires a #{attrib}" do
        node.valid?
        node.errors[attrib].should == []
      end
    end
  end
end
