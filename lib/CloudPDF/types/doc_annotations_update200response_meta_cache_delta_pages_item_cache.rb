# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsUpdate200ResponseMetaCacheDeltaPagesItemCache < Internal::Types::Model
      field :content_version, -> { Integer }, optional: false, nullable: false, api_name: "contentVersion"

      field :annotation_version, -> { Integer }, optional: false, nullable: false, api_name: "annotationVersion"
    end
  end
end
