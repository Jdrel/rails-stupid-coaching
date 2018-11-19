class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'hello'
      return @answer = 'Hello! How are you?'
    elsif @question == 'what time is it'
      return @answer = Time.now
    elsif @question == 'I am going to work'
      return @answer ='Great!'
    elsif @question.include?('?')
      return @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
