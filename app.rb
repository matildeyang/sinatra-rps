require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample()

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  elsif @comp_move == "scissors"
    @outcome = "won"
  end 
  erb(:rock)
end 

get("/paper") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample()

  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome = "tied"
  elsif @comp_move == "scissors"
    @outcome = "lost"
  end 
  erb(:paper)
end 

get("/scissors") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample()

  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "paper"
    @outcome = "won"
  elsif @comp_move == "scissors"
    @outcome = "tied"
  end 
  erb(:scissors)
end 
