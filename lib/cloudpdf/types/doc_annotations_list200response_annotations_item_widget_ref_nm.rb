# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemWidgetRefNm < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :nm, -> { String }, optional: false, nullable: false
    end
  end
end
