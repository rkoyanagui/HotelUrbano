require File.expand_path("././pilot.rb")
include Screenshot

describe "Buscar um hotel 5-estrelas" do
	begin
	context "no Rio de Janeiro" do
		it { @driver.get( "https://www.hotelurbano.com/" ) }
		it do
			cabecalho = Cabecalho.new( @driver )
			cabecalho.buscar_local( "Rio de Janeiro" )
			resultado_busca = cabecalho.clicar_botao_de_busca
			RSpec::Matchers.expect( barra_de_busca.text ).to include( "Rio de Janeiro" )
			take_screenshot( "buscar_um_hotel_5-estrelas" )
		end
	end
	rescue RSpec::Expectations::ExpectationNotMetError => error
		puts error.message
		take_screenshot( "buscar_um_hotel_5-estrelas_ERRO" )
	end
end