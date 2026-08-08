# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLinkTarget < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGoto }, key: "GOTO"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetURI }, key: "URI"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoRemote }, key: "GOTO_REMOTE"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetLaunch }, key: "LAUNCH"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetJavascript }, key: "JAVASCRIPT"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetNamed }, key: "NAMED"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetUnsupported }, key: "UNSUPPORTED"
    end
  end
end
