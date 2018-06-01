class Cabecalho
	def initialize( driver )
		@driver = driver
		@wait = Selenium::WebDriver::Wait.new
	end
	def barra_de_busca
		@driver.find_element( name: "q" )
	end
	def botao_de_busca
		@driver.find_element( xpath: "//button[contains(text(), \"Buscar\")]" )
	end
	def buscar_local( local )
		@wait.until { barra_de_busca.enabled? }
		barra_de_busca.send_keys( local )
	end
	def clicar_botao_de_busca
		@driver.action.click( botao_de_busca )
		ResultadoBusca.new( @driver )
	end
end