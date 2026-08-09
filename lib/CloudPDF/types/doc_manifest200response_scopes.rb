# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifest200ResponseScopes < Internal::Types::Model
      field :content, -> { CloudPDF::Types::DocManifest200ResponseScopesContent }, optional: false, nullable: false

      field :annotations, -> { CloudPDF::Types::DocManifest200ResponseScopesAnnotations }, optional: false, nullable: false

      field :layout, -> { CloudPDF::Types::DocManifest200ResponseScopesLayout }, optional: false, nullable: false

      field :attachments, -> { CloudPDF::Types::DocManifest200ResponseScopesAttachments }, optional: false, nullable: false

      field :metadata, -> { CloudPDF::Types::DocManifest200ResponseScopesMetadata }, optional: false, nullable: false

      field :actions, -> { CloudPDF::Types::DocManifest200ResponseScopesActions }, optional: false, nullable: false
    end
  end
end
