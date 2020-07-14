class SpiderPost
  def self.start(url)
    doc = Nokogiri::HTML(open(url))
    tags = []

    title = doc.css('.container .aw-question-detail .mod-head h1').text
    question = doc.css('.container .mod-body .content').text
    answer = doc.css('.container .mod-body .markitup-box').text
    el_tags = doc.css('.aw-content-wrap .tag-bar .topic-tag a')
    el_tags.each do |el|
      tags << el.text
    end


    # try to save data to db:posts table
    begin
      Post.create(
          url: url,
          title: title,
          question: question,
          answer: answer,
          tags: tags,
      )
    rescue => e
      puts url, e
    end
  end
end
