module HomeHelper
    def get_date(date)
        date.strftime '%d %B %Y'
    end

    def is_author_of_article(id)
        if user_signed_in?
            if current_user.id == id
                true
            else
                false
            end
        end
    end

    def is_author(id)
        author = Author.where('users_id = ?', id)
        return !author.blank?
    end

    def get_author_name(id)
        author = Author.where('users_id = ?', id)[0]
        return "#{author.first_name} #{author.last_name}"
    end
end
