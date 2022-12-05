require_relative "lib/sidekiq/version"

Gem::Specification.new do |gem|
  gem.authors = ["Mike Perham"]
  gem.email = ["mperham@gmail.com"]
  gem.summary = "Simple, efficient background processing for Ruby"
  gem.description = "Simple, efficient background processing for Ruby."
  gem.homepage = "https://sidekiq.org"
  gem.license = "LGPL-3.0"

  gem.executables = ["sidekiq", "sidekiqmon"]
  gem.files = ["sidekiq.gemspec", "README.md", "Changes.md", "LICENSE"] + `git ls-files | grep -E '^(bin|lib|web)'`.split("\n")
  gem.name = "sidekiq"
  gem.version = Sidekiq::VERSION
  gem.required_ruby_version = ">= 2.5.0"

  if gem.respond_to?(:metadata)
    gem.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/Breeze-Aviation"
    gem.metadata["homepage_uri"] = gem.homepage
    gem.metadata["source_code_uri"] = "https://github.com/Breeze-Aviation/sidekiq"
    gem.metadata["changelog_uri"] = "https://github.com/Breeze-Aviation/sidekiq"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  gem.add_dependency "redis", ["<5", ">= 4.5.0"]
  gem.add_dependency "connection_pool", ["<3", ">= 2.2.5"]
  gem.add_dependency "rack", "~> 2.0"
end
