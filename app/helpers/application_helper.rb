module ApplicationHelper
	def full_title(page_title = '')
		base_title = "Where's Waldo"
		if page_title.empty?
			base_title
		else
			"#{page_title} | #{base_title}".html_safe
		end
	end	
end
