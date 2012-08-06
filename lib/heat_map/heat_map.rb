class HeatMap
	def initialize(function,min_x,max_x,min_y,max_y,params)
		@params=self.check_par(params)
		@function=function
		@min_x=min_x
		@max_x=max_x
		@min_y=min_y
		@max_y=max_y
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

	def getFunction
		@function
	end

	def getMinX
		@min_x 
	end
	
	 def getMaxX
                @max_x
        end
	
	def getMinY
                @min_y
        end

	 def getMaxY
                @max_y
        end

	 def getParams
                @params
        end


	def save
		begin
        		a = Java::ComDomain::clocomics
       			a.save_heat(self.getFunction,self.getMinX,self.getMaxX,self.getMinY,self.getMaxY,self.getParams)
		rescue Exception => ex
		end
	end
	def view
		 begin
                        a = Java::ComDomain::clocomics
                        a.view_heat(self.getFunction,self.getMinX,self.getMaxX,self.getMinY,self.getMaxY,self.getParams)
                rescue Exception => ex
                end


	end

end
