# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsList400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsList400ResponseError }, optional: false, nullable: false
    end
  end
end
