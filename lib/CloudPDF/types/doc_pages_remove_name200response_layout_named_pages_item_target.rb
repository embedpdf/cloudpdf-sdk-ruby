# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesRemoveName200ResponseLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocPagesRemoveName200ResponseLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::DocPagesRemoveName200ResponseLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::DocPagesRemoveName200ResponseLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
