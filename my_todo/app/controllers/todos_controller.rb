class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new()
    @todo.ingavedatum = params[:ingavedatum]
    @todo.einddatum = params[:einddatum]
    @todo.prioriteit = params[:prioriteit]
    @todo.beschrijving = params[:beschrijving]
    @todo.status = params[:status]
    @todo.save
  end

  def show

  end

end