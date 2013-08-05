get '/' do
  @anagrams = params[:anagrams]
  erb :index
end

get '/word' do
  word = Word.new(term: params[:user_input], 
    sorted: params[:user_input].chomp.downcase.split('').sort.join(''))
  @anagrams = word.anagrams
  redirect to("/?anagrams=#{@anagrams}")
end
