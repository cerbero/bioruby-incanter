require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BlandAltman" do

before :each do
    @x = [1.0,2.0,3.0]
    @x2 = [1.0,2.0,3.0]
    @params = {"title" => "Bland"}
    @plot = BlandAltman.new  @x,@x2,@params
end

describe "#new" do
    it "takes three parameters and returns a BlandAltman object" do
        @plot.should be_an_instance_of BlandAltman
    end
end

describe "#save" do
    it "save plot whit name sample.jpg(deafult)" do
        @plot.save
        (File.exist? "sample.jpg").should==true
        FileUtils.rm "sample.jpg"
    end
end
end

