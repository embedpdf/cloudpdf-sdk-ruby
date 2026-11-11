# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemFormsCopyRefMapItem < Internal::Types::Model
      field :from, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: false

      field :to, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: false
    end
  end
end
