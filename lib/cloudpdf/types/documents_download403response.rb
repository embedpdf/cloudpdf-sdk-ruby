# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsDownload403Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsDownload403ResponseError }, optional: false, nullable: false
    end
  end
end
