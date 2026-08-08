# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsCreate200ResponseMetaAffectedPagesItem < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :revision, -> { Cloudpdf::Types::DocAnnotationsCreate200ResponseMetaAffectedPagesItemRevision }, optional: false, nullable: false

      field :weak_annotation_state, -> { Cloudpdf::Types::DocAnnotationsCreate200ResponseMetaAffectedPagesItemWeakAnnotationState }, optional: false, nullable: false, api_name: "weakAnnotationState"
    end
  end
end
