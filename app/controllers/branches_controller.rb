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

  # def create
  #   branch = Branch.create(branch_params)

  #   redirect_to branches_path
  # end

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

  # def update
  #   @branch.update(branch_params)

  #   redirect_to branch_path(@branch)
  # end

  def update 
    respond_to do |format| 
      if @branch.update(branch_params) 
        format.html { redirect_to branches_url, notice: 'Branch was successfully updated.' } 
      else 
        format.html { render :edit } 
      end 
    end 
  end

  def desactivate
    #@branch.toggle! :active
    #@branch.update(active: !branch.active?)
    # if @branch.active?
    #   @branch.update(active: false)
    # else
    #   @branch.update(active: true)
    # end
  end
  
  private

  def branch_params
    params.require(:branch).permit(:name, :address, :status)
  end

  def current_branch
    @branch = Branch.find(params[:id])
  end
end
