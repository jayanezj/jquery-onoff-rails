module Onoff
  module Rails
    class Engine < ::Rails::Engine
    end
  end

  class Railtie < ::Rails::Railtie
    initializer "onoff.action_view" do |app|
      ActiveSupport.on_load :action_view do
        require 'onoff/view_helpers/action_view'
        include Onoff::ViewHelpers::ActionView
      end
    end
  end
end
