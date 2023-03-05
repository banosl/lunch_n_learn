def load_stubs
  recipes_mexico
  recipes_empty
  all_countries
end

def recipes_mexico
  stub_request(:get, "https://api.edamam.com/api/recipes/v2?app_id=979855b9&app_key=29f347f65a3d8f279cd071f1f01a3096&q=Mexico&type=public").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v2.7.4'
        }).
      to_return(status: 200, body: File.read("spec/fixtures/recipes_mexico.json"))
end

def recipes_empty
  stub_request(:get, "https://api.edamam.com/api/recipes/v2?app_id=979855b9&app_key=29f347f65a3d8f279cd071f1f01a3096&q=Tokelau&type=public").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Content-Type'=>'application/json',
       	  'User-Agent'=>'Faraday v2.7.4'
           }).
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