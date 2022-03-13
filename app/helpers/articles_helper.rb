module ArticlesHelper
    def get_date(date)
        date.strftime '%d %B %Y'
    end

    def is_author(id)
        author = Author.where('users_id = ?', id)
        return !author.blank?
    end
end
