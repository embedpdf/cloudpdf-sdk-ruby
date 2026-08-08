# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsThumbnailResponse < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsThumbnailResponseError }, optional: false, nullable: false
    end
  end
end
