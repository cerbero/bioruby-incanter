class XyPlot
# ==== Attributes  
    #  
    # * +valuex+ - a vector of Float numeric value   
    # * +valuey+ - a vector of Float numeric value   
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
    # * +:x_label+ - (default 'Categories') Label of x ass   
    # * +:y_label+ -  (default 'Value') Label of y ass
    # * +:legend+ - (default false) Prints legend   
    # * +:vertical+ -  (default true) The orientation of the plot   
    # * +:group_by+ -  (default nil) A vector of values used to group the values into series within each category.
    # * +:points+ - (default false) includes point-markers
    # * +:height+ - (default 1500)  Graph height
    # * +:width+ -  (default 800)   Graph width
    # * +:file_name+ - (default sample.jpg) Graph File Name/Path to save plot. You can chose jpg or pdf   
    #
    # ==== Examples  
    #   
    # Class Usage:  
    # 
    #    x = [1.0,2.0,3.0]
    #    y = [1.0,2.0,3.0]
    #    params = {"title" => "XY Plot","points"=>"true"}
    #    plot = XyPlot.new(x,y,params)
    #    #To view
    #    plot.view 
    #    #to save
    #    plot.save


	def initialize(valuex,valuey,params)
		@value_x=check_val(valuex)
		@value_y=check_val(valuey)
		@params=self.check_par(params)
	end

	def check_par(params)
        	hash = Hash.new
		permitted = ["title","x_label","y_label","vertical","points","gruop_by","legend","width","height","file_name"]
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
		
		if params["points"]==nil
                        hash["points"]=false
                else
                        hash["points"]=params["points"]
                end
		
		if params["group_by"]==nil
                        hash["group_by"]=nil
                else
                        hash["group_by"]=params["group_by"]
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
       			a.save_xy(self.getValuex,self.getValuey,self.getParams)
		rescue Exception => ex
		end
	end
	def view
		 begin
                        a = Java::ComDomain::clocomics
                        a.view_xy(self.getValuex,self.getValuey,self.getParams)
                rescue Exception => ex
                end
	end

end
