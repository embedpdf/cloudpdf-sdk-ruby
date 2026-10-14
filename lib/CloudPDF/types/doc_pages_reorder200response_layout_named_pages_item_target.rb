# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesReorder200ResponseLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocPagesReorder200ResponseLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::DocPagesReorder200ResponseLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::DocPagesReorder200ResponseLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
