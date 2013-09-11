#! /usr/bin/ruby
dir = File.expand_path(File.dirname(__FILE__))
Dir["#{dir}/.*"].each do |file|
  system "ln -s #{File.expand_path(file)} ~" unless File.directory?(file)
end
