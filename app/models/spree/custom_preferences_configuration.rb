class Spree::CustomPreferencesConfiguration < Spree::Preferences::Configuration
  preference :signup_notification, :text, :default => ''
end