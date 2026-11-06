# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifestResponseScopes < Internal::Types::Model
      field :content, -> { CloudPDF::Types::DocManifestResponseScopesContent }, optional: false, nullable: false

      field :annotations, -> { CloudPDF::Types::DocManifestResponseScopesAnnotations }, optional: false, nullable: false

      field :forms, -> { CloudPDF::Types::DocManifestResponseScopesForms }, optional: false, nullable: false

      field :layout, -> { CloudPDF::Types::DocManifestResponseScopesLayout }, optional: false, nullable: false

      field :attachments, -> { CloudPDF::Types::DocManifestResponseScopesAttachments }, optional: false, nullable: false

      field :metadata, -> { CloudPDF::Types::DocManifestResponseScopesMetadata }, optional: false, nullable: false

      field :actions, -> { CloudPDF::Types::DocManifestResponseScopesActions }, optional: false, nullable: false

      field :outline, -> { CloudPDF::Types::DocManifestResponseScopesOutline }, optional: false, nullable: false
    end
  end
end
