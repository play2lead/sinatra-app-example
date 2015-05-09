Bundler.require

require 'sinatra'
require 'sinatra/asset_pipeline'

class MyApp < Sinatra::Base
  register Sinatra::AssetPipeline

  get '/' do
    stream do |out|
      out << "It's gonna be legen -\n"
      sleep 0.5
      out << " (wait for it) \n"
      sleep 1
      out << "- dary!\n"
    end
  end
end
