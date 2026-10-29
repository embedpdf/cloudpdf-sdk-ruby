# frozen_string_literal: true

module CloudPDF
  module Types
    class FoldersGet200Response < Internal::Types::Model
      field :folder, -> { CloudPDF::Types::FoldersGet200ResponseFolder }, optional: false, nullable: false

      field :path, -> { Internal::Types::Array[CloudPDF::Types::FoldersGet200ResponsePathItem] }, optional: false, nullable: false
    end
  end
end
