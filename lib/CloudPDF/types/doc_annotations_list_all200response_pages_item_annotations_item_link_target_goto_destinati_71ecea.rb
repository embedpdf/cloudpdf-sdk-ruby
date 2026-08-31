# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLinkTargetGotoDestinationFitBh < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :top, -> { Integer }, optional: true, nullable: false
    end
  end
end
