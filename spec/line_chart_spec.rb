require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "LineChart" do

before :each do
    @categories = ["uman","elf","dwarfs"]
    @values = [1.0,2.0,3.0]
    @params = {"title" => "Popolation of middle heart","x_label"=>"Popolation","y_label"=>"greed"}
    @plot = LineChart.new  @categories,@values,@params
end

describe "#new" do
    it "takes three parameters and returns a BarChart object" do
        @plot.should be_an_instance_of LineChart
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
