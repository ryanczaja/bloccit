module ApplicationHelper
	def control_group_tag(errors, &block)
		if errors.any?
			content_tag :div, capture(&block), class: 'control_group error'
		else
			content_tag :div, capture(&block), class: 'control_group'
		end
	end
end
