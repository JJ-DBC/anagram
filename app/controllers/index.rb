get '/' do
  @anagrams = params[:anagrams]
  erb :index
end

post '/' do
  word = Word.new(term: params[:user_input].chomp.downcase, 
    sorted: params[:user_input].chomp.downcase.split('').sort.join(''))
  @anagrams = word.anagrams

  erb :index
end
