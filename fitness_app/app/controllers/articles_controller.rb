class ArticlesController < ApplicationController

	def index
		@articles = Article.all
		@workout_articles = Category.find_by(name: "Workout").articles
		@nutrition_articles = Category.find_by(name: "Nutrition").articles
		@motivation_articles = Category.find_by(name: "Motivation").articles
		@supplement_articles = Category.find_by(name: "Supplemention").articles
		@humor_articles = Category.find_by(name: "Humor").articles
	end

	def show
		@article = Article.find(params[:id])
	end
end

