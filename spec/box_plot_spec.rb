require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BoxPlot" do

before :each do
    @x = [1.0,2.0,3.0]
    @params = {"title" => "Box Plot"}
    @plot = BoxPlot.new  @x,@params
end

describe "#new" do
    it "takes two parameters and returns a BoxPlot object" do
        @plot.should be_an_instance_of BoxPlot
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

