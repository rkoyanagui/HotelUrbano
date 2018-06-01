class ResultadoBusca
	def initialize( driver )
		@driver = driver
		@wait = Selenium::WebDriver::Wait.new
	end
end