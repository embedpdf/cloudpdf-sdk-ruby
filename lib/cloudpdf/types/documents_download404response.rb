# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsDownload404Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsDownload404ResponseError }, optional: false, nullable: false
    end
  end
end
