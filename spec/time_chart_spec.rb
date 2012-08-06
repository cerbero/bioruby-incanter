require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "TimeChart" do

before :each do
    @time = [1000,2000,3000]
    @y = [1.0,2.0,3.0]
    @params = {"title" => "TimePlot"}
    @plot = TimeChart.new  @time,@y,@params
end

describe "#new" do
    it "takes three parameters and returns a TimeChart object" do
        @plot.should be_an_instance_of TimeChart
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

