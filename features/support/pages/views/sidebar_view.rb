class SideBarView < BasePage
  def logged_user
    find(".sidebar-wrapper .user .info span").text
  end
end
