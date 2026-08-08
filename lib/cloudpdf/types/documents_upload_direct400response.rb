# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsUploadDirect400Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsUploadDirect400ResponseError }, optional: false, nullable: false
    end
  end
end
