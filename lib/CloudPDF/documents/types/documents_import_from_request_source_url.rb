# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      class DocumentsImportFromRequestSourceURL < Internal::Types::Model
        field :url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
