class CreateCategories < Sinatra::Base
    get '/categories' do
        categories = Category.all
end