# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesInsertBlankLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::ChangeItemPagesInsertBlankLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::ChangeItemPagesInsertBlankLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::ChangeItemPagesInsertBlankLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
