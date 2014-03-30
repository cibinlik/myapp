class QuestionsController < ApplicationController

def new
end

def create
	@question = Question.new(params[:post])
	@question.save
	redirect_to @question
	#render text: params[:question].inspect
end

def question_params
	params.require(:question).permit(:question)
end

def show
	@question = Question.find(params[:id])
end

end
