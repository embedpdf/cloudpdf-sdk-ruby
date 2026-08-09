# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifest200ResponsePagesItemState < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :revision, -> { CloudPDF::Types::DocManifest200ResponsePagesItemStateRevision }, optional: false, nullable: false

      field :weak_annotation_state, -> { CloudPDF::Types::DocManifest200ResponsePagesItemStateWeakAnnotationState }, optional: false, nullable: false, api_name: "weakAnnotationState"
    end
  end
end
