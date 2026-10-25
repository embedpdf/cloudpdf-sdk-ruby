# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesReorderLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::ChangeItemPagesReorderLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::ChangeItemPagesReorderLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::ChangeItemPagesReorderLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
