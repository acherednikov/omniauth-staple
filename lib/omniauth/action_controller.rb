require "http"

module OmniauthStaple
  module ActionController

    def remote_sign_up(action_name)

      self.send(:after_action, {only: action_name}) do |controller|
        puts '->>>'
        puts '->>>'
        puts '->>>'

        HTTP.post('http://localhost:3003/users', json: {
          user: {
            email:      esource.email,
            password:   params['user']['password'],
            first_name: resource.first_name,
            last_name:  resource.last_name
          }
        })
      end
    end

  end
end

ActionController::Base.extend OmniauthStaple::ActionController
