# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemPageState < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :revision, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemPageStateRevision }, optional: false, nullable: false

      field :weak_annotation_state, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemPageStateWeakAnnotationState }, optional: false, nullable: false, api_name: "weakAnnotationState"
    end
  end
end
