# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesRotate200ResponseMetaAffectedPagesItemWeakAnnotationStateKnown < Internal::Types::Model
      field :has_any_weak_annotations, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "hasAnyWeakAnnotations"
    end
  end
end
