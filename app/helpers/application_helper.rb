module ApplicationHelper
  def login_helper
    if current_user
      content_tag :div, class: 'logout-button' do
        button_to "Logout", destroy_user_session_path, method: :delete, class: 'logout'
      end
    else
      content_tag :div, class: 'login-buttons' do
        (link_to "Register", new_user_registration_path, class: 'register') +
        " ".html_safe + 
        (button_to "Login", new_user_session_path,class: 'login')  
      end
    end
  end
end
