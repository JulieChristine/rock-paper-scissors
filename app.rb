require('sinatra')
  require('sinatra/reloader')
  require('./lib/rock_paper_scissors.rb')

  get('/') do
    erb(:index)
  end

  get('/game') do
    @result = params.fetch('player1').beats(params.fetch('player2')).fetch(:item1)
    erb(:index)
  end
