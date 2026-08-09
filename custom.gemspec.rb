# frozen_string_literal: true

def add_custom_gemspec_data(spec)
  spec.authors = ["CloudPDF"]
  spec.email = ["hello@cloudpdf.com"]
  spec.homepage = "https://www.cloudpdf.com"
  spec.license = "Apache-2.0"
  spec.summary = "The official Ruby SDK for the CloudPDF API."
  spec.description = "A typed Ruby client for deployment, tenant, and document operations in the CloudPDF API."
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/embedpdf/cloudpdf-sdk-ruby"
  spec.files = spec.files.reject do |file|
    file.start_with?(".github/") || file == "cloudpdf-generation.json"
  end
end
