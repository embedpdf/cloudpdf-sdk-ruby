# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesInsertBlank200ResponseLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocPagesInsertBlank200ResponseLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::DocPagesInsertBlank200ResponseLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::DocPagesInsertBlank200ResponseLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
