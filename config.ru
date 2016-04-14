require 'dugway'

begin
  file = File.read('.dugway.json')
  json = JSON.parse(file)
  options = HashWithIndifferentAccess.new(json)
rescue Exception => e
  puts e
  options = {}
  
 options[:customization] = {
  :image => {
	  :url => '/images/Banner.jpeg',
	  :width => 200,
	  :height => 50
  },
  :background_color => '#CCCCCC',
  :show_search => true,
  :twitter_username => 'jusjoin'
  };
end

run Dugway.application(options)