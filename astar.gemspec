Gem::Specification.new do |spec|
  root = File.expand_path('..', __FILE__)
  require File.join(root, "lib", "astar", "version.rb").to_s

  spec.name = "astar"
  spec.version = AStar::VERSION
  spec.authors = ["Daniel Inkpen"]
  spec.email = ["dan2552@gmail.com"]

  spec.summary = "Ruby implementation of the A* search algorithm"
  spec.description = spec.summary
  spec.homepage = "https://github.com/Dan2552/astar"
  spec.license = "MIT"

  spec.files = Dir
    .glob(File.join(root, "**", "*.rb"))
    .reject { |f| f.match(%r{^(test|spec|features)/}) }

  if File.directory?(File.join(root, "exe"))
    spec.bindir = "exe"
    spec.executables = Dir.glob(File.join(root, "exe", "*")).map { |f| File.basename(f) }
  end

  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
end
