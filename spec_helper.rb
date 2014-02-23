Dir[ENV['MD'] || 'algorithms/**/*.md'].each do |filename|
  File.read(filename).scan(/~~~\n(require 'rspec'\n.+?)\n~~~/m).flatten.each_with_index do |snippet, i|
    puts "Evaluating #{i + 1} snippet in #{filename}"
    eval snippet
  end
end