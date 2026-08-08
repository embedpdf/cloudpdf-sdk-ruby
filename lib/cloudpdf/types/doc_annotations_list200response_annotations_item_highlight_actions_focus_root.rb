# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemHighlightActionsFocusRoot < Internal::Types::Model
      field :type, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsFocusRootType }, optional: false, nullable: false

      field :subtype, -> { String }, optional: false, nullable: false

      field :script, -> { String }, optional: true, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: false, nullable: false, api_name: "next"
    end
  end
end
