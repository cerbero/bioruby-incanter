require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "FunctionPlot" do

before :each do
    @function = "(defn cubic [x] (+ (* x x x) (* 2 x x) (* 2 x) 3))"
    @min_x = 0 
    @max_x=100   
    @params = {"title" => "Function"}
    @plot = FunctionPlot.new  @function,@min_x,@max_x,@params
end

describe "#new" do
    it "takes four parameters and returns a FunctionPlot object" do
        @plot.should be_an_instance_of FunctionPlot
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

