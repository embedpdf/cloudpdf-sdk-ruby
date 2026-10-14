# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemMetadataUpdate < Internal::Types::Model
      field :skipped, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :metadata, -> { CloudPDF::Types::DocumentMetadata }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
