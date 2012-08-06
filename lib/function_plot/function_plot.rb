class FunctionPlot
	def initialize(function,min,max,params)
		@params=self.check_par(params)
		@function=function
		@min=min
		@max=max
	end

	def check_par(params)
        	hash = Hash.new
		permitted = ["title","x_label","y_label","legend","width","height","file_name"]
        	keys = params.keys
        	keys.each{ |key|
                	 if permitted.include?(key)==false
                        	raise "Error : Permitted key are title,x_label,y_label,legend,width,height,file_name"
                 	end
        	}
		
		if params["title"]==nil
                	hash["title"]="A sample Graph"
        	else
                	 hash["title"]=params["title"]
        	end

		if params["x_label"]==nil
                        hash["x_label"]="Categories"
                else
                         hash["x_label"]=params["x_label"]
                end

		if params["y_label"]==nil
                        hash["y_label"]="Values"
                else
                        hash["y_label"]=params["y_label"]
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

	def getFunction
		@function
	end

	def getMin
		@min 
	end

	def getMax
		@max
	end
	
	def getParams
                @params
        end


	def save
		begin
        		a = Java::ComDomain::clocomics
       			a.save_function(self.getFunction,self.getMin,self.getMax,self.getParams)
		rescue Exception => ex
		end
	end
	def view
		 begin
                        a = Java::ComDomain::clocomics
                        a.view_function(self.getFunction,self.getMin,self.getMax,self.getParams)
                rescue Exception => ex
                end


	end

end
