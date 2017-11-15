require "http"

module OmniauthStaple
  module ActionController

    def remote_sign_up_after(action_name)
      self.send(:after_action, {only: action_name}) do |controller|
        HTTP.post([OmniAuth::Strategies::Staple::STAPLE_AUTH_URL, '/users'].join, json: {
          user: {
            email:      resource.email,
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
