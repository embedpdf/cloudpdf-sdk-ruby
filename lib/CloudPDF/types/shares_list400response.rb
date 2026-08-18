# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesList400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesList400ResponseError }, optional: false, nullable: false
    end
  end
end
