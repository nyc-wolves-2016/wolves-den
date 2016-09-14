get '/' do
  redirect '/wolves'
end

get '/wolves' do
  @wolves = Wolf.all
  erb :'wolves/index'
end

get '/wolves/:id' do
  @wolf = Wolf.find(params[:id])
  erb :'wolves/show'
end