class LoginPage < BasePage
  def go
    visit "/"
  end

  def with(email, pass)
    find("input[name=email]").set email
    find("input[name=password]").set pass
    click_button "Entrar"
  end

  def alert
    find(".alert").text
  end
end
