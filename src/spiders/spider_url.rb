class SpiderUrl
  def self.start(url)
    doc = Nokogiri::HTML(open(url))
    el_links = doc.css(".aw-common-list .aw-item .aw-question-content h4 a")
    el_links.each do |el|
      url = el.attribute("href").value
      Url.create(url: url)
    end
  end
end
