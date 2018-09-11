# -*- encoding: utf-8 -*-
# stub: status-page 0.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "status-page".freeze
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Umair Ejaz".freeze]
  s.date = "2018-09-11"
  s.description = "Health monitoring Rails plug-in, which checks various services (db, cache, sidekiq, redis, etc.).".freeze
  s.email = ["umair.ejaz@careem.com".freeze]
  s.files = ["README.md".freeze, "Rakefile".freeze, "app/controllers/status_page".freeze, "app/controllers/status_page/status_controller.rb".freeze, "app/views/status_page".freeze, "app/views/status_page/status".freeze, "app/views/status_page/status/index.html.erb".freeze, "config/routes.rb".freeze, "lib/status-page".freeze, "lib/status-page.rb".freeze, "lib/status-page/configuration.rb".freeze, "lib/status-page/engine.rb".freeze, "lib/status-page/monitor.rb".freeze, "lib/status-page/services".freeze, "lib/status-page/services/base.rb".freeze, "lib/status-page/services/cache.rb".freeze, "lib/status-page/services/database.rb".freeze, "lib/status-page/services/redis.rb".freeze, "lib/status-page/services/resque.rb".freeze, "lib/status-page/services/sidekiq.rb".freeze, "lib/status-page/version.rb".freeze]
  s.homepage = "https://github.com/rails-engine/status-page".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Health monitoring Rails plug-in, which checks various services (db, cache, sidekiq, redis, etc.)".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 4.2"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 4.2"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.2"])
  end
end
