module OmniauthStaple
  module ActionController

    def remote_sign_up(controller_class, action_name)

      controller_class.send('after_action', {only: action_name}) do |controller|
        puts '***'
        puts self.inspect
        puts '***'
        puts '->>>'
        puts '->>>'
        puts '->>>'
      end
    end

  end
end

ActionController::Base.extend OmniauthStaple::ActionController

# if defined? ActionController
#   # return unless ActionController.const_defined?('Base')
#   puts '.. ADDING ACTION TO CONTROLLER ...'
#   ActionController.const_get('Base').class_eval { include ControllerAdditions }
#
# end