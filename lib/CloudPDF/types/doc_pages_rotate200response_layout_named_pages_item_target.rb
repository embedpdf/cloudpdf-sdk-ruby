# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesRotate200ResponseLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocPagesRotate200ResponseLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::DocPagesRotate200ResponseLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::DocPagesRotate200ResponseLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
