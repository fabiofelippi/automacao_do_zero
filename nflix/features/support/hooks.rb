# frozen_string_literal: true

Before do
  @login_page = LoginPage.new
  @movie_page = MoviePage.new
  @sidebar = SidebarView.new
end

Before("@login") do
  @login_page.go
  @login_page.with('tony@stark.com', 'pwd123')
end