# frozen_string_literal: true

module CloudPDF
  module Types
    class FoldersGetResponse < Internal::Types::Model
      field :folder, -> { CloudPDF::Types::FoldersGetResponseFolder }, optional: false, nullable: false

      field :path, -> { Internal::Types::Array[CloudPDF::Types::FoldersGetResponsePathItem] }, optional: false, nullable: false
    end
  end
end
