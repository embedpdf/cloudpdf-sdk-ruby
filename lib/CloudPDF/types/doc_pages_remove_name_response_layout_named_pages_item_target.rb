# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesRemoveNameResponseLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocPagesRemoveNameResponseLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::DocPagesRemoveNameResponseLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::DocPagesRemoveNameResponseLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
