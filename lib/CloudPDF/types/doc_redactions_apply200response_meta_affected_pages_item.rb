# frozen_string_literal: true

module CloudPDF
  module Types
    class DocRedactionsApply200ResponseMetaAffectedPagesItem < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :revision, -> { CloudPDF::Types::DocRedactionsApply200ResponseMetaAffectedPagesItemRevision }, optional: false, nullable: false

      field :weak_annotation_state, -> { CloudPDF::Types::DocRedactionsApply200ResponseMetaAffectedPagesItemWeakAnnotationState }, optional: false, nullable: false, api_name: "weakAnnotationState"
    end
  end
end
