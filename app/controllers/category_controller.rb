class CreateCategories < Sinatra::Base
    get '/categories' do
        categories = Category.all
        categories.to_json
    end

    get '/categories/:id' do
        category = Category.find (params[:id])
        category.to_json
    end

    get '/categories/:category_slug' do
        category = Category.find_by_slug(params[:category_slug])
        category.to_json
    end

    post '/categories'do
    category = Category.create(
        name:params[:name],
        
    )
    end
end