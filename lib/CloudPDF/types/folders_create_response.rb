# frozen_string_literal: true

module CloudPDF
  module Types
    class FoldersCreateResponse < Internal::Types::Model
      field :folder, -> { CloudPDF::Types::FoldersCreateResponseFolder }, optional: false, nullable: false
    end
  end
end
