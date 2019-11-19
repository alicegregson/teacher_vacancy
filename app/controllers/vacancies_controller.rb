 class VacanciesController < ApplicationController

 def index
    @vacancies = Vacancy.all
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  def new
    @vacancy = Vacancy.new
  end

  def create
    @vacancy = Vacancy.new(vacancy_params)
    if @vacancy.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    vacancy = Vacancy.find(params[:id])
  end

  def update
    vacancy = Vacancy.find(params[:id])
    vacancy.update(vacancy_params)
    redirect_to vacancy_path(vacancy)
  end

  def destroy
    vacancy = Vacancy.find(params[:id])
    vacancy.delete
    redirect_to vacancies_path
  end

  private

  def vacancy_params
    params.require(:vacancy).permit(:title, :school, :description)
  end

end
