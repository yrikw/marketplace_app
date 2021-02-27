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
end
