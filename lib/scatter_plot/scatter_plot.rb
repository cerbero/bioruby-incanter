class ScatterPlot
	def initialize(valuex,valuey,params)
		@value_x=check_val(valuex)
		@value_y=check_val(valuey)
		@params=self.check_par(params)
	end

	def check_par(params)
        	hash = Hash.new
		permitted = ["title","x_label","y_label","vertical","n_bins","density","gruop_by","gradient","legend","width","height","file_name"]
        	keys = params.keys
        	keys.each{ |key|
                	 if permitted.include?(key)==false
                        	raise "Error : Permitted key are title,x_label,y_label,vertical,n_bins,density,group_by,gardient,legend,width,height"
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

		if params["vertical"]==nil
                	hash["vertical"]=true
       		else
                	hash["vertical"]=params["vertical"]
        	end

	 	if params["legend"]==nil
        	        hash["legend"]=false
      		else
                	hash["legend"]=params["legend"]
        	end
		
		if params["n_bins"]==nil
                        hash["n_bins"]=10
                else
                        hash["n_bins"]=params["n_bins"]
                end
		
		if params["density"]==nil
                        hash["density"]=false
                else
                        hash["density"]=params["density"]
                end
		
		if params["group_by"]==nil
                        hash["group_by"]=nil
                else
                        hash["group_by"]=params["group_by"]
                end

		if params["gradient"]==nil
                        hash["gradient"]=false
                else
                        hash["gradient"]=params["gradient"]
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

	def getValuex
		@value_x 
	end

	 def getValuey
                @value_y
        end
	

	 def getParams
                @params
        end


	def save
		begin
        		a = Java::ComDomain::clocomics
       			a.save_scatter(self.getValuex,self.getValuey,self.getParams)
		rescue Exception => ex
		end
	end
	def view
		 begin
                        a = Java::ComDomain::clocomics
                        a.view_scatter(self.getValuex,self.getValuey,self.getParams)
                rescue Exception => ex
                end
	end

end
