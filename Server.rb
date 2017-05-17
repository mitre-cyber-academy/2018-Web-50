require 'sinatra'

get '/' do
  '<title>No Page</title>
<h1>Please access the home page</h1>
<a href="/home">Home Page</a>'
end

get '/home' do
  '<title>Home Page</title>
<h1>Welcome to Online Web-Store</h1>
We at Online Web-Store, not only have a large catalog of products to choose from, we also have a huge customer base.<br>
See a list of our products <a href="/products">here</a> and a selection of our customers <a href="/customers">here</a><br>
If you already have an account you can login here
<form action="/login" method="post">
Username:<input type="text" name="username"><br><br>
Password:<input type="password" name="pwd"><br><br>
<input type="submit" value="Submit">'
end

get '/products' do
  '<title>Products</title>
<h2>Product List</h2><br>
<a href="/products/cable">Cable</a><br>
<a href="/products/cookie">Cookie</a><br>
<a href="/products/dandelions">Dandelions</a><br>
<a href="/products/eagle">Eagle</a><br>
<a href="/products/google">Google</a><br>
<a href="/products/ice">Ice</a><br>
<a href="/products/orange">Orange</a><br>
<a href="/products/strangerThings3">Stranger Things Season 3</a><br>
<a href="/products/zoo">Zoo</a><br>'
end

get '/products/cable' do
  '<title>Cable</title>
<h2>Cable</h2><br>
<p><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Male_type_N_connector.jpg/1200px-Male_type_N_connector.jpg" alt="Male type N connector.jpg" height="400" width="400"></p>
The RF Coaxial Cable is the ultimate cable.  It does everything and you will never need any other cable.<br>
<h4>$10</h4><br>
Please login to add to your cart.'
end

get '/products/cookie' do
  '<title>Cookie</title>
<h2>Cookie</h2><br>
<p><img src="https://upload.wikimedia.org/wikipedia/commons/2/23/Nice_biscuit.jpg" alt="Nice biscuit.jpg" height="400" width="400"></p>
This is The Cookie and any other cookies you might come across are merely fakes.<br>
<h4>$500,000,000</h4><br>
Please login to add to your cart.'
end

get '/products/dandelions' do
  '<title>Dandelions</title>
<h2>Dandelions</h2><br>
<p><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/TaraxacumOfficinaleSeed.JPG/1200px-TaraxacumOfficinaleSeed.JPG" alt="TaraxacumOfficinaleSeed.JPG" height="400" width="400"></p>
Why go outside and enjoy scattering the seeds of a dandelion, when you can have a bundle of them delivered right to your doorstep.<br>
<h4>$3</h4><br>
Please login to add to your cart.<br>
This is one of our premier Express Items, if you have updated payment information stored in your account you can enter your email here to immediately order the item.
<form action="/order" method="post">
<input type="hidden" name="product" value="dandelions">
Email: <input type="text" name="email"><br><br>
<input type="submit" value="Submit">
</form>'
end

get '/products/eagle' do
  '<title>Eagle</title>
<h2>Eagle</h2><br>
<p><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Golden_Eagle_in_flight_-_5.jpg/1200px-Golden_Eagle_in_flight_-_5.jpg" alt="Golden Eagle in flight - 5.jpg" height="400" width="400"></p>
Please note that while it is called a Golden Eagle, the Eagle is neither gold nor does it lay golden eggs.<br>
<h4>$350</h4><br>
Please login to add to your cart.'
end

get '/products/google' do
  '<title>Google</title>
<h2>Google</h2><br>
<p><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/1200px-Google_2015_logo.svg.png" alt="The letters of &quot;Google&quot; are each purely colored (from left to right) in blue, red, yellow, blue, green, and red." height="400" width="400"></p>
A small company that is trying to compete with Yahoo over the Search Engine market.<br>
<h4>$19.99</h4><br>
Sorry, we are currently sold out.'
end

get '/products/ice' do
  '<title>Ice</title>
<h2>Ice</h2><br>
<p><img src="https://upload.wikimedia.org/wikipedia/commons/c/c2/SnowflakesWilsonBentley.jpg" alt="SnowflakesWilsonBentley.jpg" height="400" width="400"></p>
They actually just look like cubes.<br>
<h4>$50</h4><br>
Please login to add to your cart.'
end

get '/products/orange' do
  '<title>Orange</title>
<h2>Orange</h2><br>
<p><img src="https://upload.wikimedia.org/wikipedia/commons/a/ac/Kleurenovergang_van_rood_naar_geel.png" alt="Kleurenovergang van rood naar geel.png" height="400" width="400"></p>
Please note that this purchase entitles you to everything that is orange, this includes but is not limited to Oranges, Saffron, Pumpkins, Tigers, and Poppies.<br>
<h4>$50</h4><br>
Please login to add to your cart.'
end

get '/products/strangerThings3' do
  '<title>Stranger Things Season 3</title>
<h2>Stranger Things Season 3</h2><br>
<p><img src="https://upload.wikimedia.org/wikipedia/commons/3/38/Stranger_Things_logo.png" alt="Stranger Things logo.png" height="400" width="400"></p>
Who wants to wait until October for Season 2 when you can buy Season 3 now?<br>
<h4>$100</h4><br>
Please login to add to your cart.'
end

get '/products/zoo' do
  '<title>Zoo</title>
<h2>Zoo</h2><br>
<p><img src="https://upload.wikimedia.org/wikipedia/commons/2/2e/San_Diego_Zoo_entrance_elephant.jpg" alt="San Diego Zoo entrance elephant.jpg" height="400" width="400"></p>
Please note, while the "animals" are included, they are all made from trees and hedges.<br>
<h4>$26,000</h4><br>
Please login to add to your cart.'
end

get '/customers' do
  num = Random.rand(3)
  if num.eql? 1
    '<title>Customers</title>
Here is a random selection of usernames from our customer base:<br>
Slim_Shady<br>
Pilkington<br>
The_Real_Slim_Shady<br>
Lord_of_the_Beetles<br>
Mr._Mister<br>
H@X0R<br>
Actual_Slim_Shady<br>
2B_or_!2B
<br>You can return to the home page <a href="/home">here</a>.'
  elsif num.eql? 2
    '<title>Customers</title>
Here is a random selection of usernames from our customer base:<br>
BaconLover<br>
Kratos<br>
Beets-or-Beats<br>
BohemianRhapsody<br>
Robotico<br>
Nier<br>
MnM<br>
The_Real_Slim_Shady_782
<br>You can return to the home page <a href="/home">here</a>.'
  else
    '<title>Customers</title>
Here is a random selection of usernames from our customer base:<br>
THE_LIGHT<br>
kMrIGlqQGYXU<br>
Batman<br>
MarshallMathers<br>
grassyKnoll<br>
donutsAreGr8<br>
11<br>
RapGod
<br>You can return to the home page <a href="/home">here</a>.'
  end
end

post '/login' do
  '<title>Incorrect</title>
Incorrect username or password.  Please click <a href="/home">here</a> to try again.'
end

post '/order' do
  if params['product'].to_s.eql? "dandelions"
    if params['email'].to_s.eql? "eminem@gmail.com"
      '<title>Successful Order</title>
Your order for dandelions has been placed and should arrive on ERROR MCA{aCzb163wL9} ERROR.'
    else
      if Random.rand(2).eql? 1
        '<title>Sorry</title>
Unfortunately we cannot find an account with that email address.  You can return to our product list <a href="/products">here</a>'
      else
        '<title>Sorry</title>
Unfortunately your account does not have updated payment information.  You can return to our product list <a href="/products">here</a>'
      end
    end
  else
    '<title>Sorry</title>
Unfortunately that product is not available for Express Ordering.  You can return to our product list <a href="/products">here</a>'
  end
end

get '/*' do
  redirect '/'
end

post '/*' do
  redirect '/'
end