class JobsController < Sinatra::Base

    # get all jobs
    get '/jobs' do
      jobs = Job.all
      jobs.to_json
    end 
    
    #show specific job based on title slug
    get '/jobs/:job_slug' do
      job = Job.find_by_slug(params[:job_slug])
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
    patch '/jobs/:job_slug' do
      job = Job.find_by_slug(params[:job_slug])
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
    delete '/jobs/:job_slug' do
      job = Job.find_by_slug(params[:job_slug])
      job.destroy
      job.to_json
    end

end