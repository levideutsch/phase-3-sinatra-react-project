class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end


  # USERS 

  #GET all users // Used in Users.js
  get "/users" do
    users = User.all
    users.to_json
  end

  #GET single user // Used in User.js
  get "/users/:id" do
    user = User.find(params[:id])
    if user
      user.to_json(include: :jokes)
    else
      "4040 - User not found"
    end
  end

  #POST new user // Used in NewUser.js
  post "/users" do
    user = User.create(params)
    user.to_json
  end
  

  #JOKES 

   #GET all jokes // Used in App.js
   get "/jokes" do
    jokes = Joke.all
    jokes.to_json
  end


  #POST new joke // Used in App.js
  post "/jokes" do
    joke = Joke.create(params)
    joke.to_json
  end

  #DELETE joke // Used in App.js
  delete "/jokes/:id" do
    # joke = Joke.find_by(id: params[:id])
    # binding.pry
    joke = Joke.find(params[:id])
    joke.destroy
    # joke.to_json
  end

  #PATCH joke // Used in App.js
  patch "/jokes/:id" do 
    joke = Joke.find_by(id: params[:id])
    joke.update(body: params[:body])
    joke.to_json
  end

    #GET single joke // Not used
  # get "/jokes/:id" do
  #   joke = Joke.find(params[:id])
  #   joke.to_json
  # end

  get "/jokes-with-parent" do
    joke = Joke.all
    joke.to_json(include: :user_id)
  end
end
