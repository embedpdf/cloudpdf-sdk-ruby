# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesDeleteLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::ChangeItemPagesDeleteLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::ChangeItemPagesDeleteLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::ChangeItemPagesDeleteLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
