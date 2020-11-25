module ApplicationHelper
    def loginBar(style)
        if current_user.nil?
          (link_to 'Register', new_user_registration_path, class: style) +
            (link_to 'Login', new_user_session_path, class: style)
        else
          link_to 'logout', destroy_user_session_path, method: :delete, class: style
        end
      end
end
