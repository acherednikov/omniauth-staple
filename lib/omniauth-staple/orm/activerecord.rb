module OmniauthStaple
  module ActiveRecord


    def remote_signup(columns)
      puts "Remote signup tracked columns: #{columns}"
    end

  end
end

ActiveRecord::Base.extend OmniauthStaple::ActiveRecord
