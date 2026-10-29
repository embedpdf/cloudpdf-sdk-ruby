# frozen_string_literal: true

module CloudPDF
  module Types
    class FoldersUpdate200Response < Internal::Types::Model
      field :folder, -> { CloudPDF::Types::FoldersUpdate200ResponseFolder }, optional: false, nullable: false
    end
  end
end
