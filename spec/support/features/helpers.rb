# frozen_string_literal: true

module Helpers
  def log_in(user)
    visit 'en/users/sign_in'
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button('Log in')
  end
end
