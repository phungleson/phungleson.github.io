Dir['algorithms/**/*.md'].each do |file_name|
  matcher = File.read(file_name).match(/~~~\n(require 'rspec'\n.+?)\n~~~/m)

  next if matcher.nil?

  puts "Running #{file_name}"
  matcher.captures.each do |capture|
    File.write('_site/spec.rb', capture)
    system('rspec _site/spec.rb')
  end
end