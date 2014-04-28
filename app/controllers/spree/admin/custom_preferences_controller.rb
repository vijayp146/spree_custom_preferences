module Spree
  module Admin

    class CustomPreferencesController <  Spree::Admin::BaseController

      def index
        @custom_preference_obj = Spree::CustomPreferencesConfiguration.new
        @custom_preferences = [:signup_notification, :signup1_notification]
     end


      def create
        params.each do |name, value|
          cc = Spree::CustomPreferencesConfiguration.new
          next unless cc.has_preference? name
          cc.set(:"#{name}", value)
        end
        flash[:success] = 'successfully_updated'
        redirect_to admin_custom_preferences_path
      end


    end
  end
end

 #examples
 #cc = Spree::CustomPreferencesConfiguration.new
 #if cc.has_preference? :key
   #cc.set(:key,'value')
    #cc.get(:key:)
 #end