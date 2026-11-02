# frozen_string_literal: true

module CloudPDF
  module Types
    class FontResolveRequest < Internal::Types::Model
      field :annotation, -> { CloudPDF::Types::AnnotationRef }, optional: true, nullable: false

      field :runs, -> { Internal::Types::Array[CloudPDF::Types::FontResolveRun] }, optional: false, nullable: false
    end
  end
end
