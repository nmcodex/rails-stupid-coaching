class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_message = params[:question]
    if @user_message == "I'm going to work"
      @response = "Great !"
    elsif @user_message[-1] == "?"
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
