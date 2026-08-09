# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsReset200ResponseMetaAffectedPagesItem < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :revision, -> { CloudPDF::Types::DocFormsReset200ResponseMetaAffectedPagesItemRevision }, optional: false, nullable: false

      field :weak_annotation_state, -> { CloudPDF::Types::DocFormsReset200ResponseMetaAffectedPagesItemWeakAnnotationState }, optional: false, nullable: false, api_name: "weakAnnotationState"
    end
  end
end
