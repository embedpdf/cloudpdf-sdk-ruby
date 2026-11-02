# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesCopyLayoutNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::ChangeItemPagesCopyLayoutNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::ChangeItemPagesCopyLayoutNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::ChangeItemPagesCopyLayoutNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
