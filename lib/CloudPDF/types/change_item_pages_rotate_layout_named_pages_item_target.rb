# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesRotateLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::ChangeItemPagesRotateLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::ChangeItemPagesRotateLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::ChangeItemPagesRotateLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
