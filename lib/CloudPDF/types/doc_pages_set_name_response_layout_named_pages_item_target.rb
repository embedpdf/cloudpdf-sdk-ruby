# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetNameResponseLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocPagesSetNameResponseLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::DocPagesSetNameResponseLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::DocPagesSetNameResponseLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
