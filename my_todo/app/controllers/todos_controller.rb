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

    @db = CouchRest.database(ENV['DB'])
    @doc = @todo
    @db.save_doc(doc)
  end

  def show
    self.filter
  end

  def filter
    @todos_prioriteit
    Todo.each do |todo|
      if todo[:prioriteit] = params[:prioriteit]
        @todos_prioriteit += todo
      end
    end
  end

end