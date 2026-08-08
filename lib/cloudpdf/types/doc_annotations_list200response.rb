# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200Response < Internal::Types::Model
      field :page_state, -> { Cloudpdf::Types::DocAnnotationsList200ResponsePageState }, optional: false, nullable: false, api_name: "pageState"

      field :annotations, -> { Internal::Types::Array[Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItem] }, optional: false, nullable: false
    end
  end
end
