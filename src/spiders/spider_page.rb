class SpiderPage
  def self.start
    (1..11777).each do |item|
      Page.create(url: "https://www.abc.com/sort_type-new__day-0__is_recommend-0__page-#{item}")
    end
  end
end
