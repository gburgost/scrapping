require 'open-uri'
 
url = "http://xxxsexxx.tumblr.com/"
html = open(url).read
 
expansions = Nokogiri::HTML(html).css('.photo img')
 

# img_urls = doc.css('.photo-wrapper-inner img').map{ |i| i['src'] }
 

expansions.each do |exp|
  Expansion.create(
    :name => exp.content,
    :link => exp[:src])
end