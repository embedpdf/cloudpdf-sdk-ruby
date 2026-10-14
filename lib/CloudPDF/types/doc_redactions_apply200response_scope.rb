# frozen_string_literal: true

module CloudPDF
  module Types
    class DocRedactionsApply200ResponseScope < Internal::Types::Model
      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: true, nullable: false

      field :annotations, -> { Internal::Types::Array[CloudPDF::Types::AnnotationRef] }, optional: true, nullable: false
    end
  end
end
