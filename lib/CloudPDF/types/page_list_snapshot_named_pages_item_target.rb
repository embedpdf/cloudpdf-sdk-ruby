# frozen_string_literal: true

module CloudPDF
  module Types
    class PageListSnapshotNamedPagesItemTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::PageListSnapshotNamedPagesItemTargetPage }, key: "PAGE"

      member -> { CloudPDF::Types::PageListSnapshotNamedPagesItemTargetTemplate }, key: "TEMPLATE"

      member -> { CloudPDF::Types::PageListSnapshotNamedPagesItemTargetDangling }, key: "DANGLING"
    end
  end
end
