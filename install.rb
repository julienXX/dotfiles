#!/usr/bin/env ruby
require 'fileutils'
require 'etc'

home_directory = Etc.getpwuid.dir
files = Dir.new('.').to_a
files = files - ['.', '..', '.git', 'install.rb', 'README.md']

puts "This will overwrite your current dotfiles. Are you sure (y/n)?"
response = STDIN.gets

if response == "y\n"
  files.each do |f|
    puts "Linking #{f} in your Home directory"
    FileUtils.ln_s File.expand_path(f), "#{home_directory}/.#{f}", :force => true
    puts "Done."
  end
else
  puts 'Bye!'
  exit
end
