

module Helpers
  def get_token
    timeout = Capybara.default_max_wait_time
    2.times do
      js_script = 'return window.localStorage.getItem("default_auth_token");'
      @token = page.execute_script(js_script)
      break if @token != nil
      sleep 1
    end
    @token
  end
end
