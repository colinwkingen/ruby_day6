require('sinatra')
require('sinatra/reloader')
require('./lib/triangle.rb')
require('./lib/parcels.rb')

also_reload('lib/**/*.rb')

get('/') do
  @page_title="home"
  erb(:index)
end

get('/triangles') do
  @page_title="triangles"
  erb(:triangles)
end

post('/triangles') do
  @page_title="triangles"
  @result = Triangle.new([params.fetch('side_one').to_i, params.fetch('side_two').to_i, params.fetch('side_three').to_i])
  erb(:triangles)
end

get('/parcels') do
  @page_title="parcels"
  erb(:parcels)
end

post('/parcels') do
  @page_title="parcels"
  @result = Parcels.new([params.fetch('side_one'), params.fetch('side_two'), params.fetch('side_three'), params.fetch('weight')])
  erb(:parcels)
end
