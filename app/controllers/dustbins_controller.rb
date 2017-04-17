class DustbinsController < ApplicationController

	def new

	end
	
	def show
        ds = Dustbin.all().limit(20).pluck(:location, :filled_level, :temperature, :health)
		msg = {:status => "ok", :value => ds}
		render :json => msg
	end

	def stats
    	@count_0 = Dustbin.find_by_sql("select * from dustbins where filled_level between 0 and 10").count()
        @count_1 = Dustbin.find_by_sql("select * from dustbins where filled_level between 11 and 20").count()
        @count_2 = Dustbin.find_by_sql("select * from dustbins where filled_level between 21 and 30").count()
        @count_3 = Dustbin.find_by_sql("select * from dustbins where filled_level between 31 and 40").count()
        @count_4 = Dustbin.find_by_sql("select * from dustbins where filled_level between 41 and 50").count()
        @count_5 = Dustbin.find_by_sql("select * from dustbins where filled_level between 51 and 60").count()
        @count_6 = Dustbin.find_by_sql("select * from dustbins where filled_level between 61 and 70").count()
        @count_7 = Dustbin.find_by_sql("select * from dustbins where filled_level between 71 and 80").count()
        @count_8 = Dustbin.find_by_sql("select * from dustbins where filled_level between 81 and 90").count()
        @count_9 = Dustbin.find_by_sql("select * from dustbins where filled_level between 91 and 100").count()

	end


end