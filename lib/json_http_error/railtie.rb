class JsonHttpError
  class Railtie < Rails::Railtie
    locales_path = File.expand_path('../../../locales', __FILE__)
    config.i18n.load_path += Dir["#{locales_path}/*.{rb,yml}"]
  end
end
