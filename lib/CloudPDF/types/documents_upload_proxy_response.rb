# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsUploadProxyResponse < Internal::Types::Model
      field :sha256, -> { String }, optional: false, nullable: false
    end
  end
end
