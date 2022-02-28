html = Nokogiri.HTML(content)

products = html.css('.srp-results .s-item')

products.each do |product|
    name = product.css('.s-item__title').text
    url = product.css('.s-item__link').attr('href').text

    pages << { 
        url: url,
        page_type: 'product',
        vars: { 
            'name' => name
        }
    }
end