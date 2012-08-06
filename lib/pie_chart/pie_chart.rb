class PieChart
# ==== Attributes  
    #  
    # * +group+ - a vector of String categories  
    # * +value+ - a vector of Float numeric value   
    # * +parms+ - an Hash whit parametrs value  
    #  
    # ==== Parms  
    #  
    # This Hash contain parmas . 
    # List of key permitted .   
    # 
    # 
    #  
    # * +:title+ - (default "A sample Graph") Graph main title  
    # * +:legend+ - (default false) Prints legend   
    # * +:vertical+ -  (default true) The orientation of the plot   
    # * +:height+ - (default 1500)  Graph height
    # * +:width+ -  (default 800)   Graph width
    # * +:file_name+ - (default sample.jpg) Graph File Name/Path to save plot. You can chose jpg or pdf   
    #
    # ==== Examples  
    #   
    # Class Usage:  
    # 
    #    categories = ["uman","elf","dwarfs"]
    #    values = [1.0,2.0,3.0]
    #    params = {"title" => "Popolation of middle heart","x_label"=>"Popolation","y_label"=>"greed"}
    #    plot = PieChart.new(categories,values,params)
    #    #To view
    #    plot.view 
    #    #to save
    #    plot.save

	def initialize(group,value,params)
		@group=check_grp(group)
		@value=check_val(value)
		@params=self.check_par(params)
	end

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

	def getGroup
		@group
	end

	def getValue
		@value 
	end

	 def getParams
                @params
        end


	def save
		begin
        		a = Java::ComDomain::clocomics
       			a.save_pie(self.getGroup,self.getValue,self.getParams)
		rescue Exception => ex
		end
	end
	def view
		 begin
                        a = Java::ComDomain::clocomics
                        a.view_pie(self.getGroup,self.getValue,self.getParams)
                rescue Exception => ex
                end


	end

end
