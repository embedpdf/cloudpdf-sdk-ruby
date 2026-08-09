# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemInkInReplyToObjectNumber < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :annot_object_number, -> { Integer }, optional: false, nullable: false, api_name: "annotObjectNumber"
    end
  end
end
