# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemSquareActionsCursorExitRoot < Internal::Types::Model
      field :type, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemSquareActionsCursorExitRootType }, optional: false, nullable: false

      field :subtype, -> { String }, optional: false, nullable: false

      field :script, -> { String }, optional: true, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: false, nullable: false, api_name: "next"
    end
  end
end
