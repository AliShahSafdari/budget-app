
class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group
  # GET /expenses or /expenses.json
  def index
    @expenses = Group.find(@group.id).expenses.order(created_at: :desc)

    # @expenses = Expense.all
  end

  # GET /expenses/1 or /expenses/1.json
  def show; end

  # GET /expenses/new
  def new
    # @group = Group.find(params[:group_id])
    # @expense = @group.expenses.build

    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit; end

  # POST /expenses or /expenses.json
  def create
    # @group = Group.find(params[:group_id])
    # @expense = @group.expenses.build(expense_params)
    # @expense.author = current_user
    # Rails.logger.info @expense.inspect


    @expense = Expense.new(expense_params)
    @expense.author = current_user
    Rails.logger.info @expense.inspect

    respond_to do |format|
      if @expense.save
        @group1 = Group.find(params[:expense][:group_id])
        @group1.expenses << @expense

        format.html { redirect_to group_expenses_path(@group), notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end
  private
  def set_group
    @group = current_user.groups.find(params[:group_id])
  end

  # Only allow a list of trusted parameters through.
  def expense_params
    params.require(:expense).permit(:name, :amount, :author_id)
  end
end
