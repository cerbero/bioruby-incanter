require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BarChart" do

before :each do
    @categories = ["uman","elf","dwarfs"]
    @values = [1.0,2.0,3.0]
    @params = {"title" => "Popolation of middle heart","x_label"=>"Popolation","y_label"=>"greed"}
    @plot = BarChart.new  @categories,@values,@params
end

describe "#new" do
    it "takes three parameters and returns a BarChart object" do
        @plot.should be_an_instance_of BarChart
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
