class AuthorsController < Sinatra::Base

    
    set(:views, "app/views/authors")

    get '/authors' do 
        erb :authors
    end

    get '/authors/:id' do
        @author_id = params[:id].to_i
        erb :author_show
    end
end