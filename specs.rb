require 'tempfile'

Dir[ARGV[0] || 'algorithms/**/*.md'].each do |filename|
  matcher = File.read(filename).match(/~~~\n(require 'rspec'\n.+?)\n~~~/m)

  next if matcher.nil?

  puts "Running #{filename}"
  matcher.captures.each do |capture|
    tempfile = Tempfile.new('spec')
    tempfile.write(capture)
    tempfile.close

    system("rspec #{tempfile.path}")

    tempfile.unlink
  end
end