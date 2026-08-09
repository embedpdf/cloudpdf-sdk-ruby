# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemFreeTextFontColor < Internal::Types::Model
      field :r, -> { Integer }, optional: false, nullable: false

      field :g, -> { Integer }, optional: false, nullable: false

      field :b, -> { Integer }, optional: false, nullable: false
    end
  end
end
