# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemStampInReplyToObjectNumber < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :annot_object_number, -> { Integer }, optional: false, nullable: false, api_name: "annotObjectNumber"
    end
  end
end
