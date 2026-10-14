# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetName200ResponseLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocPagesSetName200ResponseLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::DocPagesSetName200ResponseLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::DocPagesSetName200ResponseLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
