class PaymentsController < ApplicationController
    def index
        @payments = Payment.all
    end
    def new
        @payment = Payment.new
    end
    def create
        @payment = Payment.new(params.require(:payment).permit(:value, :username))
        if @payment.save
            redirect_to payments_path
        else
            redirect_to newpayment_path
        end
    end
    def destroy
        export()
        Payment.destroy_all
        redirect_to payments_path
    end
    private def export
        payments = Payment.all
        payments.each do |payment|
            File.open("#{Date.current}.txt", "a") do |file|
                file.write(payment.username + " - " + payment.value.to_s + " zl - " + payment.created_at.to_formatted_s(:short).to_s + "\n")
                file.close
            end
        end
    end
end