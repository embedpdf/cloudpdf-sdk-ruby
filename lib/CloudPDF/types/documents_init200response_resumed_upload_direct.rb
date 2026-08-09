# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInit200ResponseResumedUploadDirect < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false
    end
  end
end
