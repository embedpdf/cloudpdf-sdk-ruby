# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesCreate403Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesCreate403ResponseError }, optional: false, nullable: false
    end
  end
end
