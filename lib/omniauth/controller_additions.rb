# module OmniauthStaple
  module ControllerAdditions
    module ClassMethods

      def remote_sign_up(controller_class, action_name)

        controller_class.send('after_action', {only: action_name}) do |controller|
          puts '->>>'
          puts '->>>'
          puts '->>>'
        end

      end

    end

  end
# end

if defined? ActionController
  # return unless ActionController.const_defined?('Base')
  ActionController.const_get('Base').class_eval { include ControllerAdditions }

end