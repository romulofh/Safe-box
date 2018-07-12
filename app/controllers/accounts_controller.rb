class AccountsController < ApplicationController
    def new
        @account = Account.new
    end

    def create
        @account = Account.new(account_params)
        @account.user = current_user
        if @account.save
            flash[:notice] = "Conta criada com sucesso"
            redirect_to accounts_path
        else
            render 'new'
        end
    end

    def index
        @accounts = Account.all
    end

    def show
        @account = Account.find(params[:id])
    end

    def deposito
        @account.balance = @account.balance + @account.value_op
    end

    def saque
        @account.balance = @account.balance - @account.value_op
    end

    private
    def account_params
        params.require(:account).permit(:number, :agency, :account_type, :balance)
    end
end