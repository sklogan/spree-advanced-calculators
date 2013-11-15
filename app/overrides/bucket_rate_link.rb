Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                     :name => "admin_bucket_rates",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                     :text => "<%= configurations_sidebar_menu_item 'Bucket Rates', admin_bucket_rates_path %>",
                     :disabled => false)