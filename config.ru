require "rubygems"
require "sinatra"

set :public_folder, Proc.new { File.join(root, "_site") }
set :static_cache_control, [:public, max_age: 60 * 60 * 24 * 365]

get "/" do
  File.read("_site/index.html")
end

run Sinatra::Application
