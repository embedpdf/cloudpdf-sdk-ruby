# frozen_string_literal: true

module CloudPDF
  module Types
    class FoldersGetResponsePathItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
