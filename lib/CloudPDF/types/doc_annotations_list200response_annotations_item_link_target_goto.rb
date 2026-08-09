# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLinkTargetGoto < Internal::Types::Model
      field :destination, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestination }, optional: false, nullable: false
    end
  end
end
