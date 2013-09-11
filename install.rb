#! /usr/bin/ruby
Dir['.*'].each do |file|
  system "ln -s #{File.expand_path(file)} ~"
end
