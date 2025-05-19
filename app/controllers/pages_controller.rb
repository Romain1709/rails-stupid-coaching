class PagesController < ApplicationController
  def ask
  end
  def answer
    @pages = params[:pages]
    @answer = if @pages == "I am going to work"
                "Great!"
              elsif @pages&.end_with?("?")
                "Silly question, get dressed and go to work!"
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
