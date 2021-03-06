# frozen_string_literal: true

Before do
  @login_page = LoginPage.new
  @movie_page = MoviePage.new
  @sidebar = SidebarView.new

  # page.driver.browser.manage.window.
  page.current_window.resize_to(1440, 900)
end

Before("@login") do
  user = CONFIG["users"]["cat_manager"]
  @login_page.go
  @login_page.with(user["email"], user["pass"])
end