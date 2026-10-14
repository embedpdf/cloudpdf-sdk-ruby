# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesInsertBlank200ResponseLayoutPagesItemSize < Internal::Types::Model
      field :width, -> { Integer }, optional: false, nullable: false

      field :height, -> { Integer }, optional: false, nullable: false
    end
  end
end
