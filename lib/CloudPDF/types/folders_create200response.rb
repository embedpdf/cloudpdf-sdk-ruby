# frozen_string_literal: true

module CloudPDF
  module Types
    class FoldersCreate200Response < Internal::Types::Model
      field :folder, -> { CloudPDF::Types::FoldersCreate200ResponseFolder }, optional: false, nullable: false
    end
  end
end
