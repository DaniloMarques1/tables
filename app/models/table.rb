class Table < ApplicationRecord
    has_many :item

    accepts_nested_attributes_for :item, reject_if: :all_blank, allow_destroy: true
end
