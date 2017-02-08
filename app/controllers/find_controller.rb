class FindController < ApplicationController

def guesses
  @lists_of_guesses = Guess.all
  render("/guesses.html.erb")
end

def single_guess
  # Guess.find_by({ :id => 6})
  g = Guess.find(params[:number])

  @first_num = g.first_number
  @second_num = g.second_number
  @third_num = g.third_number

  if @first_num < @second_num && @second_num < @third_num
    @obeys_rule = "Yes!"
  else
    @obeys_rule = "No"
  render("/guesses/6.html.erb")
end

def new_form
  render("/guesses/new.html.erb")
end

def create_row
  g = Guess.new

  g.first_number = params[:first_number]
  g.second_number = params[:second_number]
  g.third_number = params[:third_number]

  g.save

  redirect_to("https://localhost:3000/guesses")
  render("/create_form.html.erb")
end

def edit_form

  the_id = params[:the_old_id]
  g = Guess.find(the_id)
  @first_num = g.first_number
  @second_num = g.second_number
  @third_num = g.third_number
  render("/guesses/edit_form.html.erb")
end
end
end
