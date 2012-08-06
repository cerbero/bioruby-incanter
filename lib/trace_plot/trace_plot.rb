class TracePlot
	def initialize(value,params)
		@value=check_val(value)
		@params=self.check_par(params)
	end

	def check_par(params)
        	hash = Hash.new
		permitted = ["title","vertical","width","height","file_name"]
        	keys = params.keys
        	keys.each{ |key|
                	 if permitted.include?(key)==false
                        	raise "Error : Permitted key are title,vertical,width,height,file-name"
                 	end
        	}
		
		if params["title"]==nil
                	hash["title"]="A sample Graph"
        	else
                	 hash["title"]=params["title"]
        	end

		if params["vertical"]==nil
                	hash["vertical"]=true
       		else
                	hash["vertical"]=params["vertical"]
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

	def getValue
		@value 
	end

	 def getParams
                @params
        end


	def save
		begin
        		a = Java::ComDomain::clocomics
       			a.save_trace(self.getValue,self.getParams)
		rescue Exception => ex
		end
	end
	def view
		 begin
                        a = Java::ComDomain::clocomics
                        a.view_trace(self.getValue,self.getParams)
                rescue Exception => ex
                end


	end

end
