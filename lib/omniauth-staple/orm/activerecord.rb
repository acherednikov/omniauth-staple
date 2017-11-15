require "http"

module OmniauthStaple
  module ActiveRecord


    def remote_signup #(columns)
      puts "Remote signup tracked !"

      # after_create do
      after_action do
        puts '>>> USER INFO POST >>>'

        return unless controller.action_name = 'create'

        HTTP.post([OmniAuth::Strategies::Staple::STAPLE_AUTH_URL, '/users'].join, json: {
            user: {
              email: self.email,
              # encrypted_password: self.encrypted_password,
              password: params['user']['password'],
              first_name: self.first_name,
              last_name: self.last_name
          }
        })

      end

    end

  end
end

# ActiveRecord::Base.extend OmniauthStaple::ActiveRecord
Devise::RegistrationsController.extend OmniauthStaple::ActiveRecord
