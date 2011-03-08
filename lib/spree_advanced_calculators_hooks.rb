class SpreeAdvancedCalculatorsHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  
  insert_after :admin_configurations_menu do
    "<%= configurations_menu_item(I18n.t('bucket_rates'), admin_bucket_rates_path, I18n.t('bucket_rates_description')) %>"
  end
end