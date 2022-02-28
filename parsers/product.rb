html = Nokogiri.HTML(content)

price = html.css('[itemprop="price"]').text
price = html.css('.vi-mainPrice.ms-price').text if price.strip == ''
price = html.css('.notranslate').text if price.strip == ''
raise 'something happend!' if price.strip == ''
    
outputs << {
    _collection: "products",
    name: page['vars']['name'],
    url: page['url'],
    price: price
}