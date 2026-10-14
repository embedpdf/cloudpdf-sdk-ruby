# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesInsert200ResponseLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocPagesInsert200ResponseLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::DocPagesInsert200ResponseLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::DocPagesInsert200ResponseLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
