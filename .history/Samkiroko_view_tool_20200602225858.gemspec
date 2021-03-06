require_relative 'lib/Samkiroko_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "Samkiroko_view_tool"
  spec.version       = SamkirokoViewTool::VERSION
  spec.authors       = ["Samkiroko"]
  spec.email         = ["kirokodev@gmail.com"]

  spec.summary       = %q{Various view specific methods for application i use}
  spec.description   = %q{Provides generated HTML data for rails application }
  spec.homepage      = "https://kiroko.tech"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://kiroko.tech "

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Samkiroko/my_ruby_gem"
  spec.metadata["changelog_uri"] = "https://github.com/Samkiroko/my_ruby_gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
