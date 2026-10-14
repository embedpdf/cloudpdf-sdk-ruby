# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpMetadataUpdate < Internal::Types::Model
      field :patch, -> { CloudPDF::Types::MetadataPatch }, optional: false, nullable: false

      field :expect, -> { CloudPDF::Types::MetadataPatch }, optional: true, nullable: false
    end
  end
end
