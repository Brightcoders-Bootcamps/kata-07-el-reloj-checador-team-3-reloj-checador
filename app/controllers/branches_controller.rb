class BranchesController < ApplicationController
  before_action :current_branch, only: [:show, :edit, :update]
  def index
    @branches = Branch.all
  end

  def show
  end

  def new
    @branch = Branch.new
  end

  def create 
      @branch = Branch.new(branch_params) 
      respond_to do |format| 
      if @branch.save 
        format.html { redirect_to branches_url, notice: 'Branch was successfully created.' } 
      else 
        format.html { render :new } 
      end 
    end
  end 


  def edit
  end

  def update 
    respond_to do |format| 
      if @branch.update(branch_params) 
        format.html { redirect_to branches_url, info: 'Branch was successfully updated.' } 
      else 
        format.html { render :edit } 
      end 
    end 
  end

  def destroy
    @branch = Branch.find(params[:id])

    @branch.destroy
    respond_to do |format|
      format.html { redirect_to branches_url, notice: 'Branch was successfully deleted.' }
      format.json { head :no_content }
    end
  end
  
  private

  def branch_params
    params.require(:branch).permit(:name, :address)
  end

  def current_branch
    @branch = Branch.find(params[:id])
  end
end
