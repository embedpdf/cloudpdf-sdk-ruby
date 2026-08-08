# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocManifest200ResponseScopes < Internal::Types::Model
      field :content, -> { Cloudpdf::Types::DocManifest200ResponseScopesContent }, optional: false, nullable: false

      field :annotations, -> { Cloudpdf::Types::DocManifest200ResponseScopesAnnotations }, optional: false, nullable: false

      field :layout, -> { Cloudpdf::Types::DocManifest200ResponseScopesLayout }, optional: false, nullable: false

      field :attachments, -> { Cloudpdf::Types::DocManifest200ResponseScopesAttachments }, optional: false, nullable: false

      field :metadata, -> { Cloudpdf::Types::DocManifest200ResponseScopesMetadata }, optional: false, nullable: false

      field :actions, -> { Cloudpdf::Types::DocManifest200ResponseScopesActions }, optional: false, nullable: false
    end
  end
end
