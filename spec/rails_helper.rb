Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

       config.use_transactional_fixtures = false