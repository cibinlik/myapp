class QuestionsController < ApplicationController

def new
end

	def create
		#@question = Question.new(params[:question])
		@question.save
		redirect_to @question
		#render text: params[:question].inspect
	end

	def show
		@question = Question.find(params[:id])
	end

	def index
		@questions = Question.all
	end
	
	private
	
		def question_params
			params.require(:question).permit(:question)
		end

end
