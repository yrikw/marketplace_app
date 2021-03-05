module ListingsHelper
    def select_alert_subclass(input)
        case input
        when 'notice'
            return 'info'
        when 'success'
            return 'success'
        when 'error'
            return 'danger'
        when 'alert'
            return 'warining'
        else 
            return 'warining'
        end
    end

    def render_stripe_button(current_user)
        if current_user
            button = '<button data-stripe="payment" class="btn btn-lg mt-5">BUY</button>'
        else
            button =  '<button class="btn btn-lg mt-5" disabled> Log in to Buy</button>'
        end 
        return button.html_safe    
    end
end
