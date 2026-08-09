# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitR < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :left, -> { Integer }, optional: false, nullable: false

      field :bottom, -> { Integer }, optional: false, nullable: false

      field :right, -> { Integer }, optional: false, nullable: false

      field :top, -> { Integer }, optional: false, nullable: false
    end
  end
end
