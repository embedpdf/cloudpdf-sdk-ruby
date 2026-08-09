# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200Response < Internal::Types::Model
      field :page_state, -> { CloudPDF::Types::DocAnnotationsList200ResponsePageState }, optional: false, nullable: false, api_name: "pageState"

      field :annotations, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItem] }, optional: false, nullable: false
    end
  end
end
