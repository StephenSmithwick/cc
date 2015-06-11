class CreditCard < ActiveRecord::Base
  def self.ingest(path)
    JSON.parse(File.open(path).read).each do | json |
      creditcard = CreditCard.find_or_create_by(:recno => json['RECNO'])

      creditcard.code = json['PROD_CODE']
      creditcard.vendor_description = json['VENDOR_DESCRIPTION']
      creditcard.balance_transfer = json['FEESBALT']
      creditcard.has_balance_transfer = json['INFOBTFF'] == "Yes"

      creditcard.save!
    end.count
  end
end
