def load_stubs
  recipes_mexico
  recipes_empty
  all_countries
  youtube_mexico
  pictures_mexico
  places_mexico_city
  mexico_capital
  narnia_youtube
  narnia_unsplash
  durotar_youtube
  durotar_unsplash
end

def recipes_mexico
  stub_request(:get, "https://api.edamam.com/api/recipes/v2").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v2.7.4'
        }, query: {"app_id": ENV['app_id'], "app_key": ENV['app_key'], "q": "Mexico", "type": "public"}).
      to_return(status: 200, body: File.read("spec/fixtures/recipes_mexico.json"))
end

def recipes_empty
  stub_request(:get, "https://api.edamam.com/api/recipes/v2").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Content-Type'=>'application/json',
       	  'User-Agent'=>'Faraday v2.7.4'
           }, query: {"app_id": ENV['app_id'], "app_key": ENV['app_key'], "q": "Tokelau", "type": "public"}).
         to_return(status: 200, body: File.read("spec/fixtures/recipes_empty.json"))
end

def all_countries
  stub_request(:get, "https://restcountries.com/v3.1/all?fields=name,capital,capitalInfo,flag").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Content-Type'=>'application/json',
       	  'User-Agent'=>'Faraday v2.7.4'
           }).
         to_return(status: 200, body: File.read("spec/fixtures/all_countries.json"))
end

def youtube_mexico
  stub_request(:get, "https://youtube.googleapis.com/youtube/v3/search").
  with(
    headers: {
  'Accept'=>'*/*',
  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
  'Content-Type'=>'application/json',
  'User-Agent'=>'Faraday v2.7.4'
    }, query: {"channelId": "UCluQ5yInbeAkkeCndNnUhpw", "key": ENV['GOOGLE_API'], "part": "snippet", "q": "Mexico", "type": "video" }).
  to_return(status: 200, body: File.read("spec/fixtures/youtube_mexico.json"))
end

def pictures_mexico
  stub_request(:get, "https://api.unsplash.com/search/photos").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Accept-Version'=>'v1',
       	  'User-Agent'=>'Faraday v2.7.4'
           }, query: {"client_id": ENV['unsplash_api'], "query": "Mexico"}).
         to_return(status: 200, body: File.read("spec/fixtures/pictures_mexico.json"))
end

def places_mexico_city
  stub_request(:get, "https://api.geoapify.com/v2/places").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Content-Type'=>'application/json',
       	  'User-Agent'=>'Faraday v2.7.4'
           }, query: {apiKey: ENV['places_key'], filter: "circle:-99.13,19.43,20000", categories: "tourism.sights"}).
         to_return(status: 200, body: File.read("spec/fixtures/tourist_sights_mexico_city.json"))

end

def mexico_capital
  stub_request(:get, "https://restcountries.com/v3.1/name/Mexico?fields=name,capital,capitalInfo,flag").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Content-Type'=>'application/json',
       	  'User-Agent'=>'Faraday v2.7.4'
           }).
         to_return(status: 200, body: File.read("spec/fixtures/mexico_capital.json"))
end

def narnia_youtube
  stub_request(:get, "https://youtube.googleapis.com/youtube/v3/search").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Content-Type'=>'application/json',
       	  'User-Agent'=>'Faraday v2.7.4'
           }, query: {"channelId": "UCluQ5yInbeAkkeCndNnUhpw", "key": ENV['GOOGLE_API'], "part": "snippet", "q": "Narnia", "type": "video" }).
         to_return(status: 200, body: File.read("spec/fixtures/youtube_narnia_no_results.json"), headers: {})
end

def narnia_unsplash
  stub_request(:get, "https://api.unsplash.com/search/photos").
  with(
    headers: {
    'Accept'=>'*/*',
    'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    'Accept-Version'=>'v1',
    'User-Agent'=>'Faraday v2.7.4'
    }, query: {"client_id": ENV['unsplash_api'], "query": "Narnia"}).
  to_return(status: 200, body: File.read("spec/fixtures/narnia_unsplash.json"), headers: {})

end

def durotar_youtube
  stub_request(:get, "https://youtube.googleapis.com/youtube/v3/search").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Content-Type'=>'application/json',
       	  'User-Agent'=>'Faraday v2.7.4'
           }, query: {"channelId": "UCluQ5yInbeAkkeCndNnUhpw", "key": ENV['GOOGLE_API'], "part": "snippet", "q": "Durotar", "type": "video" }).
         to_return(status: 200, body: File.read("spec/fixtures/durotar_youtube.json"), headers: {})
end

def durotar_unsplash
  stub_request(:get, "https://api.unsplash.com/search/photos").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Accept-Version'=>'v1',
       	  'User-Agent'=>'Faraday v2.7.4'
           }, query: {"client_id": ENV['unsplash_api'], "query": "Durotar"}).
         to_return(status: 200, body: File.read("spec/fixtures/durotar_unsplash.json"), headers: {})
end