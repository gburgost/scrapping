class ScrapperController < ApplicationController
  def search
    require 'open-uri'
    year = params[:year]
    html = open("http://www.sii.cl/pagina/valores/uf/uf#{year}.htm").read

    if year

      @result = Nokogiri::HTML(html).css("tbody tr td").text

    end
  end
end
