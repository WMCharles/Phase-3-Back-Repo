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
          title: params[:title],
          description: params[:description],
          deadline: params[:deadline]
      )
      job.to_json
    end

    # edit specific job 
    patch '/jobs/:job_slug' do
      job = Job.find_by_slug(params[:job_slug])
      job.update(
        title: params[:title],
        description: params[:description],
        deadline: params[:deadline]
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