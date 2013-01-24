require 'sinatra'

set :port, 80

get '/' do
  output = ''
  File.open('index.t', 'r') do |f|
    while line=f.gets
      output += line
    end
  end
  output
end
