# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLinkTargetGoto < Internal::Types::Model
      field :destination, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLinkTargetGotoDestination }, optional: false, nullable: false
    end
  end
end
