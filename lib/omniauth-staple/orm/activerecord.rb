require "http"

module OmniauthStaple
  module ActiveRecord


    def remote_signup #(columns)
      puts "Remote signup tracked !"

      after_create do
        puts '>>> USER INFO POST >>>'
        puts OmniAuth::Strategies::Staple::STAPLE_AUTH_URL
        puts self.inspect

        HTTP.post([OmniAuth::Strategies::Staple::STAPLE_AUTH_URL, '/users'].join, json: {
            user: {
              email: self.email,
              encrypted_password: self.encrypted_password,
              # password: self.encrypted_password,
              first_name: self.first_name,
              last_name: self.last_name
          }
        })

      end

    end

  end
end

ActiveRecord::Base.extend OmniauthStaple::ActiveRecord
