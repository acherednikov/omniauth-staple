module OmniauthStaple
  module ActiveRecord


    def remote_signup(columns)
      puts "Remote signup tracked columns: #{columns}"

      after_create do
        puts '>>> USER INFO POST >>>'
        puts Staple::STAPLE_AUTH_URL
        
        puts self.inspect
      end

    end

  end
end

ActiveRecord::Base.extend OmniauthStaple::ActiveRecord
