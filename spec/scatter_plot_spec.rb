require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "ScatterPlot" do

before :each do
    @x = [1.0,2.0,3.0]
    @y = [1.0,2.0,3.0]
    @params = {"title" => "Scatter Plot"}
    @plot = ScatterPlot.new  @x,@y,@params
end

describe "#new" do
    it "takes three parameters and returns a ScatterPlot object" do
        @plot.should be_an_instance_of ScatterPlot
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

