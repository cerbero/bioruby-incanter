require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "TracePlot" do

before :each do
    @values = [1.0,2.0,3.0]
    @params = {"title" => "Trace Plot"}
    @plot = TracePlot.new  @values,@params
end

describe "#new" do
    it "takes two parameters and returns a TracePlot object" do
        @plot.should be_an_instance_of TracePlot
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
