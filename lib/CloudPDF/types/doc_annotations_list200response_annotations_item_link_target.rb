# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLinkTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGoto }, key: "GOTO"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetURI }, key: "URI"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoRemote }, key: "GOTO_REMOTE"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetLaunch }, key: "LAUNCH"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetJavascript }, key: "JAVASCRIPT"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetNamed }, key: "NAMED"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetUnsupported }, key: "UNSUPPORTED"
    end
  end
end
