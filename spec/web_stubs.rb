def load_stubs
  recipes_mexico
  recipes_empty
  all_countries
  youtube_mexico
  pictures_mexico
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
  stub_request(:get, "https://restcountries.com/v3.1/all").
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
           }, query: {"key": ENV['GOOGLE_API'], "part": "snippet", "q": "Mexico", "type": "video"}).
         to_return(status: 200, body: File.read("spec/fixtures/youtube_mexico.json"))
end

def pictures_mexico
  stub_request(:get, "https://api.unsplash.com/search/photos?client_id=ztSv_twXGYppEvqeCxzhtElEk8wHBvngWuAbPTopt1c&query=Mexico").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Accept-Version'=>'v1',
       	  'User-Agent'=>'Faraday v2.7.4'
           }, query: {"client_id": ENV['unsplash_api'], "query": "Mexico"}).
         to_return(status: 200, body: File.read("spec/fixtures/pictures_mexico.json"))
end