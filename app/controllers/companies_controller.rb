class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def new
     @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    # @company.rank = 1
    if @company.save
      redirect_to companies_show_path(@company)
    else
      render 'new'
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      redirect_to companies_show_path(@company)
    else
      render 'edit'
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path
  end

  def upvote
    @company = Company.find(params[:id])
    # @company.rank += 1
    if @company.save
      redirect_to companies_show_path(@company)
    else
      render 'show'
    end
  end

  private

  def company_params
    params.require(:company).permit(:company_name, :url, :rating, :languages, :end, :team_project, :team_size, :company_size, :women_diversity, :intern_supports, :mentor_names_and_contact_info, :pairing, :product_clients, :perks, :interior_images, :contact, :salaries, :number_of_interns)
  end


end
