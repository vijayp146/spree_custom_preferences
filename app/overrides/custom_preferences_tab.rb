
Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "admin_custom_preferences",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab :custom_preferences,  :url => '/admin/custom_preferences', :icon => 'icon-preference' %>",
                     :disabled => false)