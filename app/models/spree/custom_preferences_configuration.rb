class Spree::CustomPreferencesConfiguration < Spree::Preferences::Configuration
  preference :signup_notification, :text, :default => ''
  preference :signup1_notification, :text, :default => ''
end