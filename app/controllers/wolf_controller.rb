get '/' do
  redirect '/wolves'
end

get '/wolves' do
  @wolves = Wolf.all
  erb :'wolves/index'
end

get '/wolves/new' do
  erb :'wolves/new'
end

get '/wolves/:id' do
  @wolf = Wolf.find(params[:id])
  if request.xhr?
    erb :'wolves/_description', locals: {wolf: @wolf}, layout: false
  else 
    erb :'wolves/show'
  end
end

post '/wolves' do
  wolf = Wolf.new(params[:wolf])
  if wolf.save
    redirect '/'
  else
    @errors = wolf.errors.full_messages
    erb :'wolves/new'
  end
end
