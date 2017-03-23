require('capybara/rspec')
  require('./app')
  # what does this line means?
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  
