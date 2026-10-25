# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesInsertLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::ChangeItemPagesInsertLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::ChangeItemPagesInsertLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::ChangeItemPagesInsertLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
