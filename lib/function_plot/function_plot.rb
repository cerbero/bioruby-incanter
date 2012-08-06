class FunctionPlot
# ==== Attributes  
    #  
    # * +function+ - a String function in Clojure Style
    # * +min+ - Lower Bound   
    # * +max+ - Upper Bound
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
    # * +:height+ - (default 1500)  Graph height
    # * +:width+ -  (default 800)   Graph width
    # * +:file_name+ - (default sample.jpg) Graph File Name/Path to save plot. You can chose jpg or pdf   
    #
    # ==== Examples  
    #   
    # Class Usage:  
    #
    #    function = "(defn cubic [x] (+ (* x x x) (* 2 x x) (* 2 x) 3))" 
    #    min = 0
    #    max = 50
    #    params = {"title" => "Plot my Function"}
    #    plot = FunctionPlot.new(function,min,max,params)
    #    #To view
    #    plot.view 
    #    #to save
    #    plot.save
 
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
