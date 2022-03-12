module HomeHelper
    def get_date(date)
        date.strftime '%d %B %Y'
    end

    def is_author(id)
        if user_signed_in?
            if current_user.id == id
                true
            else
                false
            end
        end
    end
end
