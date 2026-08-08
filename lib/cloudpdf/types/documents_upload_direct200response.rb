# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsUploadDirect200Response < Internal::Types::Model
      field :sha256, -> { String }, optional: false, nullable: false
    end
  end
end
