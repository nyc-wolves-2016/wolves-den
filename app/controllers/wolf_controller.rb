get '/' do
  redirect '/wolves'
end

get '/wolves' do
  @wolves = Wolf.all
  erb :'wolves/index'
end