require("sinatra")
require("sinatra/reloader")
require("./lib/triangles")
also_reload("lib/**/*.rb")

get("/") do
  erb(:index)
end

get("/triangles") do
  @triangle_type = Triangles.new(params.fetch("side1").to_i(), params.fetch("side2").to_i(), params.fetch("side3").to_i()).triangle_type()
  erb(:triangles)
end
