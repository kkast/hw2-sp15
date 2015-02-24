class PagesController < ApplicationController
  def home
    @baz = Foobar.baz ["1", "2", "3", "3", "4", "5", "10", "11", "100"]
  end

  def stringify
    @name=params[:name]
    @adjective=params[:adjective]
    if @name.blank? || @adjective.blank?
      @text = "You are nothing!"
      render "stringify"
    else
      @text= "#{@name} is so #{@adjective}"
      render "stringify"
  end
    

  end

  def age
  end

  def person
    @name=params[:name]
    @age=params[:age].to_i
    @p=Person.new @name, @age
    render "person"
  end
end
