# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit200ResponseCreatedUploadDirect < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false
    end
  end
end
