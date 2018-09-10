class RecExpensesController < ApplicationController
  before_action :set_rec_expense, only: [:show, :edit, :update, :destroy]

  # GET /rec_expenses
  # GET /rec_expenses.json
  def index
    @rec_expenses = RecExpense.all
  end

  # GET /rec_expenses/1
  # GET /rec_expenses/1.json
  def show
  end

  # GET /rec_expenses/new
  def new
    @rec_expense = RecExpense.new
  end

  # GET /rec_expenses/1/edit
  def edit
  end

  # POST /rec_expenses
  # POST /rec_expenses.json
  def create
    @rec_expense = RecExpense.new(rec_expense_params)

    respond_to do |format|
      if @rec_expense.save
        format.html { redirect_to @rec_expense, notice: 'Rec expense was successfully created.' }
        format.json { render :show, status: :created, location: @rec_expense }
      else
        format.html { render :new }
        format.json { render json: @rec_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rec_expenses/1
  # PATCH/PUT /rec_expenses/1.json
  def update
    respond_to do |format|
      if @rec_expense.update(rec_expense_params)
        format.html { redirect_to @rec_expense, notice: 'Rec expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @rec_expense }
      else
        format.html { render :edit }
        format.json { render json: @rec_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rec_expenses/1
  # DELETE /rec_expenses/1.json
  def destroy
    @rec_expense.destroy
    respond_to do |format|
      format.html { redirect_to rec_expenses_url, notice: 'Rec expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rec_expense
      @rec_expense = RecExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rec_expense_params
      params.require(:rec_expense).permit(:name, :frequency, :expense_id)
    end
end
