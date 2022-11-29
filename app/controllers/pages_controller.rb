class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]
  # setar before action pra user information EM DASHBOARD

  def home
  end

  def dashboard
    # definir as instancias por base no current_user p/ puxar so o necessario
    @tasks = Task.all
    # @meetings = Meeting.all(scope->id)
  end

  # private

  # def a_definir
  # end

  # esse metodo seta a instancia de usuario (find -> id = current_user )

end
