require 'sinatra'

get '/' do
  send_file File.expand_path('index.html', settings.public_folder)
end

get '/data' do
  a = 0
  300000.times do
    a = 0
  end
  100000.times do
    a += 1
  end
  "{'a': #{a}}"
end
