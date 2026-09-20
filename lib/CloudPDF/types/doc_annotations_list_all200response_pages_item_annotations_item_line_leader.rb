# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineLeader < Internal::Types::Model
      field :length, -> { Integer }, optional: false, nullable: false

      field :extension, -> { Integer }, optional: true, nullable: false

      field :offset, -> { Integer }, optional: true, nullable: false
    end
  end
end
