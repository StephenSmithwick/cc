json.array!(@credit_cards) do |credit_card|
  json.extract! credit_card, :id, :recno, :code, :vendor_description, :balance_transfer, :has_balance_transfer
  json.url credit_card_url(credit_card, format: :json)
end
