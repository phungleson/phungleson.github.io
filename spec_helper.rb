Dir[ARGV[1] || 'algorithms/**/*.md'].each do |filename|
  matcher = File.read(filename).match(/~~~\n(require 'rspec'\n.+?)\n~~~/m)

  next if matcher.nil?

  puts "Evaluating #{filename}"
  matcher.captures.each { |capture| eval capture }
end