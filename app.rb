require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'scrapper'
require 'google_drive'
require 'Sheets/sheets'

#myObj = Scrapping.new.get_all_the_urls_of_val_doise_townhalls
#File.open("db/email.JSON", "w") do |f|
#	f.write(myObj.to_json)
#end


session = GoogleDrive::Session.from_config("config.json")
ws = session.spreadsheet_by_key("1ibsEIgd4LQ-g7NDaVf95W5v2tSkQQexm-V_gZJNIblg").worksheets[1]


sheets("/home/andee99/Desktop/THP/semaine3/Mercredi/JSON_scrapper/db/email.JSON")
