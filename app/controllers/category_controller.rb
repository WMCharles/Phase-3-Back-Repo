class CreateCategories < Sinatra::Base
    get '/categories' do
        categories = Category.all
        categories.to_json
    end

    get '/categories/'
end