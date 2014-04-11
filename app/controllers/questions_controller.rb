class QuestionsController < ApplicationController

	def new
	@question = Question.new
	end

	def create
		@question = Question.new(params[:question].permit(:question))
		
		if @question.save
			redirect_to @question
		else
			render 'new'
		end
		#@question.save
		#redirect_to @question
		#render text: params[:question].inspect
	end

	def index
		@questions = Question.all
	end
	
	def show
		@question = Question.find(params[:id])
	end

	
	private
	
		def question_params
			params.require(:question).permit(:question)
		end

end
