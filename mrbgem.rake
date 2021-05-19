MRuby::Gem::Specification.new("mruby-astar") do |spec|
  spec.license = "MIT"
  spec.authors = "Daniel Inkpen"
  spec.rbfiles = Dir.glob(File.join(__dir__, "lib", "astar", "**", "*.rb"))
end
