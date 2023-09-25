require 'net/http'


module CryptoPriceAlert
API_URL = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=USD&order=ma
rket_cap_desc&per_page=100&page=1&sparkline=false"

    def current_price(crypto_currency)
        url = URI(API_URL)
        https = Net::HTTP.new(url.host, url.port)
        https.use_ssl = true

        request = Net::HTTP::Get.new(url)
        AlertMailer.send_alert_email("dishebh27@gmail.com").deliver_now
        response = https.request(request)
        #puts response.read_body
        #request = Net::HTTP::Post.new(url, form_data)
        
        responses = JSON.parse(response.read_body)
        for res_hash in responses do
          if res_hash["id"] == crypto_currency
            return res_hash["current_price"]
          end
        end
        return nil

    end
end
