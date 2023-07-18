require 'nokogiri'
require 'open-uri'

def get_townhall_email(townhall_url)
  html = URI.open(townhall_url).read
  nokogiri_doc = Nokogiri::HTML(html)
  townhall_emails = {}

  nokogiri_doc.at_xpath(/html/body/div/main/section[2]/div/table/tbody/tr[5]/td[2]).text.strip

end

#def get_townhall_urls
#end
