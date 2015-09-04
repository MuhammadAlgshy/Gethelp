module StatusesHelper

	def toggle_get_button(status, user)
		if user.flagged?(status, "get")
			link_to "unget", get_status_path(status)
		else
			link_to "get", get_status_path(status)
end
end
end
