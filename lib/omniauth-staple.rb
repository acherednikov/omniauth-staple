require 'active_support/core_ext/object/blank'
require 'active_support/core_ext/object/try'
require 'active_support/core_ext/class/attribute'
require 'active_support/concern'

require 'omniauth-staple/version'
require 'omniauth/strategies/staple'

# module OmniauthStaple

ActiveSupport.on_load :active_record do
  # require 'omniauth-staple/orm/activerecord'
end

# end