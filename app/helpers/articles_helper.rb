module ArticlesHelper
    def get_date(date)
        date.strftime '%d %B %Y'
    end
end
