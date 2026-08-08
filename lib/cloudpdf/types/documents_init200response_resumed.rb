# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit200ResponseResumed < Internal::Types::Model
      field :document, -> { Cloudpdf::Types::DocumentsInit200ResponseResumedDocument }, optional: false, nullable: false

      field :upload, -> { Cloudpdf::Types::DocumentsInit200ResponseResumedUpload }, optional: false, nullable: false
    end
  end
end
