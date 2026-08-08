# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponsePageState < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :revision, -> { Cloudpdf::Types::DocAnnotationsList200ResponsePageStateRevision }, optional: false, nullable: false

      field :weak_annotation_state, -> { Cloudpdf::Types::DocAnnotationsList200ResponsePageStateWeakAnnotationState }, optional: false, nullable: false, api_name: "weakAnnotationState"
    end
  end
end
