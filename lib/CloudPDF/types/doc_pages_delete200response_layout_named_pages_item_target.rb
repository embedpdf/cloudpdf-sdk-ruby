# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesDelete200ResponseLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocPagesDelete200ResponseLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::DocPagesDelete200ResponseLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::DocPagesDelete200ResponseLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
