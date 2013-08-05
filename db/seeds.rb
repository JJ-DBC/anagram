# require_relative './words.txt'

File.open(File.expand_path('../words.txt', __FILE__)).each_line do |line|
  sorted = line.chomp.downcase.split('').sort.join('')
  Word.create(term: line.chomp.downcase, sorted: sorted )
end

