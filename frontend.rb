system "open 'https://auth.sandbox.ebay.com/oauth2/authorize?client_id=Margaret-Cap-SBX-8786e1828-2091ef33&response_type=code&redirect_uri=Margaret_Hobin-Margaret-Cap-SB-wumsbk&scope=https://api.ebay.com/oauth/api_scope https://api.ebay.com/oauth/api_scope/buy.order.readonly https://api.ebay.com/oauth/api_scope/buy.guest.order https://api.ebay.com/oauth/api_scope/sell.marketing.readonly https://api.ebay.com/oauth/api_scope/sell.marketing https://api.ebay.com/oauth/api_scope/sell.inventory.readonly https://api.ebay.com/oauth/api_scope/sell.inventory https://api.ebay.com/oauth/api_scope/sell.account.readonly https://api.ebay.com/oauth/api_scope/sell.account https://api.ebay.com/oauth/api_scope/sell.fulfillment.readonly https://api.ebay.com/oauth/api_scope/sell.fulfillment https://api.ebay.com/oauth/api_scope/sell.analytics.readonly https://api.ebay.com/oauth/api_scope/sell.marketplace.insights.readonly https://api.ebay.com/oauth/api_scope/commerce.catalog.readonly'"



require 'unirest'

response = Unirest.post("https://api.sandbox.ebay.com/identity/v1/oauth2/token",
  headers: {
    "Content-Type" => "application/x-www-form-urlencoded",
    "Authorization" => "Basic <B64-encoded-oauth-credentials>"
    }
    )


response = Unirest.get("https://api.sandbox.ebay.com/buy/browse/v1/item_summary/search?q=drone&limit=3",
  headers: {
    "Authorization" => "Bearer GETUSERTOKEN"
  }
)

p response.body



##WORKING
# require 'unirest'

# response = Unirest.get("https://api.sandbox.ebay.com/buy/browse/v1/item_summary/search?q=drone&limit=3",
#   headers: {
#     "Authorization" => "Bearer v^1.1#i^1#f^0#I^3#r^0#p^3#t^H4sIAAAAAAAAAOVXa2wURRzvtddCeSfyEppwLlqDuHezj3vsSo9cH0iVloMr9IAQnNud7a3s7R67s21PMTRViRF5JDURpYlEQI2JGoOoaIAPgJIAkohBExQrJkLQDz4CBB/B2evrWgN9EdPE+7KZmf/r9/v/Zm4GtBQVP7B58ebrE11j8ne3gJZ8l4sZD4qLCudPKsifVZgHcgxcu1vubXG3FlxeYMGUlhaXIytt6BbyNKc03RKzk2WUbeqiAS3VEnWYQpaIJTEWqVkisl4gpk0DG5KhUZ7qyjIqIHMsYKAA/JAFbEAis3p3zDqjjOL9KKEwAqsABAArCGTdsmxUrVsY6riMIs4hGvA0E6pjOZENiDzvFVh+NeVZiUxLNXRi4gVUOFuumPU1c2q9fanQspCJSRAqXB1ZFFsaqa6sqq1b4MuJFe7iIYYhtq2+owpDRp6VULPR7dNYWWsxZksSsizKF+7M0DeoGOkuZhjlZ6nmAfT7ecQGBEkQSKo7QuUiw0xBfPs6nBlVppWsqYh0rOLMQIwSNhKPIwl3jWpJiOpKj/NZZkNNVVRkllFV5ZFVK2JVyylPLBo1jUZVRrKDlOF44BdYgaPCGFmEQmSuSyWNhKp3ZeoM18Vzv1QVhi6rDmuWp9bA5YiUjfqTw+SQQ4yW6kvNiIKdknrshDrAdJPIBFc7Xe1so42TutNYlCJMeLLDgVvQrYleFdwpVUihQEABfh6wssIByd9fFc5eH44ywk5zItGoz6kFJWCGTkFzPcJpDUqIlgi9dgqZqixyfoXlQgqi5YCg0LygKHTCLwdoRkEIIJRISELofyUQjE01YWPUI5L+C1mUZVRMMtIoamiqlKH6m2RPnS5JNFtlVBLjtOjzNTU1eZs4r2E2+FgAGF+8ZklMSqIUpHps1YGNaTUrDucEIfYizqRJNc1EeyS53kCFOVOOQhNnyu0MGceQppFPt377VBjuP3sLqJYDdXSBdPwtEgCmVa8jb69kpHwGJNvZmVqXrdgzGCNfws6Q/DIyvSaCsqFrmcH7NdhEvp3eg3OySDe8nTuRwOiX0dnrQwswhKSq3ki0bJiZIcLs6zwEHyhJhq3j4aTrch2Ch2JriqppznYdTsIc96GUqUMtg1XJGk7KnOOY0GupDUk81DhkjpzhxF+CGGpGr5xGtNkj6XS1PLo2ew00G6CJMF0B03SsPE6HgqEAYkJsiGaBwCCF40YEuRI1/teQ3a359kCwFcgLQRgCNB+UJZrnWPLXHJAk2i/xDCv5ocSz/IhwV2gqUXxdZrQd7osNCyN5ZNDIJWt0gXJ02y1bCFmGJtcT0loYhHRIIRcuiWVDg4Xsu+VV5V/XVF/fh2I4L/tjWl2HQKvrIHlrgiCgmflgXlHBCnfBBMpSMfJaUJcTRrNXhYqXHE06eQeZyLseZdJQNfOLXGtmX1n4V84TdfdaMLPnkVpcwIzPebGCkt6VQmbyjIlMCPCEBI4N8PxqMLd31c1Md09VzttTZp74+dVfbgbavndfLPU314fAxB4jl6swz93qygsuPNJWdX7ahpvHjsVnbZ92aF/tj/Penv5mdHFkU+vlHacuPLvpzIXphScbd+0pCqvn3tj72Bf7fg9cfeXrHXlrx5x6atyDL9rHky2TVmxkklzq9fkv1xYJ7Zuu/rR126ldNw/cmDPn872Xjr93+sraeOmTHxyYufOjeDH//sVJOz85o/9Z8uvDD3U88lzJ/h/qr9WP/Tb+x+GPb0RLrn7ZNq5m1rXTp3fOPnj2xIQNjzZ+CLnnVx1vO/bbthkrq2eXnnsifv3kO/dXWc8wJVPq7+Lt/R2rDv59+Gn32I6Cjkv3lb47dc+Wz3yfth99LZj+6siys/lVY+e9ldy4fU1j+zbu7jPf+Oa67vnOKD360lbU/sLGyZ1t/AcViQ2vPBAAAA==

#   "
#   }
# )

# p response.body