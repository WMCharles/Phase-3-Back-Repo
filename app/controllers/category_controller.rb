class CategoryController < Sinatra::Base
    set :bind, '0.0.0.0'
    configure do
        enable :cross_origin
    end
    before do
        response.headers['Access-Control-Allow-Origin'] = 'http://localhost:3000'
    end
    
    # routes...
    options "*" do
        response.headers["Allow"] = "GET, PATCH, POST, DELETE, OPTIONS"
        response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
        response.headers["Access-Control-Allow-Origin"] = "*"
        200
    end
    
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
        description:params[description]
    )
    category.to_json
    end
end