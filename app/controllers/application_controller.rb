class ApplicationController < ActionController::API
    before_action :authorize
    # def current_user
    #     auth_token = request.headers[ 'auth_token'] 
    #     if auth_token
    #         token = JWT.decode( auth_token, ENV['JWT_TOKEN'])[0]
    #         return User.find_by( id: token['user'] )
    #     else 
    #         return nil
    #     end
    # end

    def authorize
            current_user = User.find_by(id: session[:user_id]) 
        unless current_user
            render json: { errors: ['You must be logged into do that.'] }, status: :unauthorized
        end
    end

    def fetch 
        # fields = [""]
        response = JSON.parse( RestClient.get( `https://api.spoonacular.com/recipes/1/information?apiKey={API_TOKEN}` ))
        render json: response, status: :ok 
    end

    private 

    def record_not_found 
        render json: { errors: ['Record not found'] }, status: :not_found
    end
  
end
