class AccountSupplier < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :bank
end
