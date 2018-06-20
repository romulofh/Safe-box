class AccountsController < ApplicationController
    def new
        @account = Account.new
    end

    def create
        @account = Account.new(account_params)
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

    private
    def account_params
        params.require(:account).permit(:number)
    end
end