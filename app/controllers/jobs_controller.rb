class JobsController < Sinatra::Base


  set :bind, '0.0.0.0'
    configure do
        enable :cross_origin
    end
    before do
        response.headers['Access-Control-Allow-Origin'] = 'http://localhost:3000'
    end
    
    # routes...
    options "*" do
        response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
        response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
        response.headers["Access-Control-Allow-Origin"] = "*"
        200
    end

    # get all jobs
    get '/jobs' do
      jobs = Job.all
      jobs.to_json
    end 
    
    #show specific job based on title slug
    get '/jobs/:id' do
      job = Job.find(params[:id])
      job.to_json
    end

    # create a new job
    post '/jobs' do 
      job = Job.create(
          image: params[:image],
          title: params[:title],
          location: params[:location],
          deadline: params[:deadline],
          requirements: params[:requirements],
          description: params[:description]  
      )
      job.to_json
    end

    # edit specific job 
    patch '/jobs/:id' do
      job = Job.find(params[:id])
      job.update(
          image: params[:image],
          title: params[:title],
          location: params[:location],
          deadline: params[:deadline],
          requirements: params[:requirements],
          description: params[:description] 
      )
      job.to_json 
    end
    
    #process job deletion
    delete '/jobs/:id' do
      job = Job.find(params[:id])
      job.destroy
      job.to_json
    end

end