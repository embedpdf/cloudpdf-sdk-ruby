# frozen_string_literal: true

module CloudPDF
  module Types
    class FoldersUpdateResponse < Internal::Types::Model
      field :folder, -> { CloudPDF::Types::FoldersUpdateResponseFolder }, optional: false, nullable: false
    end
  end
end
