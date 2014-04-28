module Spree
  module Admin

    class CustomPreferencesController <  Spree::Admin::BaseController

      def index
        @custom_preferences = [:signup_notification]
     end


      def create
        params.each do |name, value|
          next unless ::CUSTOM_PREFERENCE.has_preference? name
          ::CUSTOM_PREFERENCE.set(:"#{name}", value)
        end
        flash[:success] = 'successfully_updated'
        redirect_to admin_custom_preferences_path
      end


    end
  end
end
