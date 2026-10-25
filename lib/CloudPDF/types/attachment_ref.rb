# frozen_string_literal: true

module CloudPDF
  module Types
    class AttachmentRef < Internal::Types::Model
      field :kind, -> { CloudPDF::Types::AttachmentRefKind }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false
    end
  end
end
