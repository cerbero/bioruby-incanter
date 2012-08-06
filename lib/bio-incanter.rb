require 'java'

jars_dir = File.join(File.dirname(__FILE__), 'java')
for jar in Dir["#{jars_dir}/*.jar"]
  require jar
end

#require for customer class
require 'pie_chart/pie_chart.rb'
require 'area_chart/area_chart.rb'
require 'bar_chart/bar_chart.rb'
require 'bland_altman/bland_altman.rb'
require 'box_plot/box_plot.rb'

java_import "java.util.HashMap"


def check_grp(grp)
	grp.each{ |item|
		if item.class!= String 
			raise "Error : Vector of class must be String"
		end
	}
	return grp
end

def check_val(value)
	value.each {|item|
                if item.class!= Float
                        raise "Error : Vector of point  must be Double"
                end     
        }
	return value
end
=begin
def check_par(params)
	hash = Hash.new
	permitted = ["title","vertical","legend","width","height","file_name"]
	keys = params.keys
	keys.each{ |key|
		 if permitted.include?(key)==false
			raise "Error : Permitted key are title,vertical,legend,width,height"
		 end
	}
	if params["title"]==nil
		hash["title"]="A sample Graph"
	else
		 hash["title"]=params["title"]
	end

	if params["vertical"]==nil
                hash["vertical"]=false
        else
                hash["vertical"]=params["vertical"]
        end

	if params["legend"]==nil
                hash["legend"]=false
        else
                hash["legend"]=params["legend"]
        end

	if params["width"]==nil
                hash["width"]=1500
        else
                 hash["width"]=params["width"]
        end

	if params["height"]==nil
                hash["height"]=800
        else
                hash["height"]=params["height"]
        end
	
	if params["file_name"]==nil
                hash["file_name"]="sample.jpg"
        else
                hash["file_name"]=params["file_name"]
        end


	
	params_map = HashMap.new(hash)
	return params_map
	
end
=end
