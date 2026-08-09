# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsThumbnailResponseError < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :state, -> { String }, optional: false, nullable: false
    end
  end
end
