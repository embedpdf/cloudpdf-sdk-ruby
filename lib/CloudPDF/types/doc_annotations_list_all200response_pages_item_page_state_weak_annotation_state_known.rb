# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemPageStateWeakAnnotationStateKnown < Internal::Types::Model
      field :has_any_weak_annotations, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "hasAnyWeakAnnotations"
    end
  end
end
