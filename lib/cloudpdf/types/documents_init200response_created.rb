# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit200ResponseCreated < Internal::Types::Model
      field :document, -> { Cloudpdf::Types::DocumentsInit200ResponseCreatedDocument }, optional: false, nullable: false

      field :upload, -> { Cloudpdf::Types::DocumentsInit200ResponseCreatedUpload }, optional: false, nullable: false
    end
  end
end
