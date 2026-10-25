# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesRestoreLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::ChangeItemPagesRestoreLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::ChangeItemPagesRestoreLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::ChangeItemPagesRestoreLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
