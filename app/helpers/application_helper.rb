module ApplicationHelper
	def delete_confirm(record)
		link_to '<span style=font-size:2em;>&#128465;</span>'.html_safe, record, class: 'emoji-link', data: { turbo_method: :delete, turbo_confirm: 'Are you sure?' }
	end
end
