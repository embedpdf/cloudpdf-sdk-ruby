# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsThumbnailResponse < Internal::Types::Model
      field :error, -> { CloudPDF::Types::DocumentsThumbnailResponseError }, optional: false, nullable: false
    end
  end
end
