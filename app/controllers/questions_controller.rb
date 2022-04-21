class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @pergunta = params[:question]
    if @pergunta.blank?
      @resposta = "I can't hear you!"
    elsif @pergunta.ends_with?("?")
      @resposta = "Silly question, get dressed and go to work!"
    elsif @pergunta.downcase =~ /i am going to work/
      @resposta = "Great"
    else
      @resposta = "I don't care, get dressed and go to work!"
    end
  end
end
