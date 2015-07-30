
class Railtie < Rails::Railtie

	initializer "truncate_html_text.initialize_truncate_html_text_helper" do |app|
		ActiveSupport.on_load(:action_view) do 
			include TruncateHtmlText
		end
	end

end