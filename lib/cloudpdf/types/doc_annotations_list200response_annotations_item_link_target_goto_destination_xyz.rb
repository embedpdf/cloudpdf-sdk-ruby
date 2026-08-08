# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationXyz < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :left, -> { Integer }, optional: true, nullable: false

      field :top, -> { Integer }, optional: true, nullable: false

      field :zoom, -> { Integer }, optional: true, nullable: false
    end
  end
end
