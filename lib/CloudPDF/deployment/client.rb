# frozen_string_literal: true

module CloudPDF
  module Deployment
    class Client
      # @param client [CloudPDF::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.deployment.license_status
      #
      # @return [CloudPDF::Types::DeploymentLicenseStatusResponse]
      def license_status(request_options: {}, **_params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/deployment/license/status",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::DeploymentLicenseStatusResponse.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # What each module declares, for a dashboard or a script that lists modules, offers their permissions in its
      # dialogs and shows their meters. Which tenants may use one is in their `features` (`tenants.get`); what it costs,
      # if anything, is the operator's.
      #
      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.deployment.modules
      #
      # @return [CloudPDF::Types::DeploymentModulesResponse]
      def modules(request_options: {}, **_params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/deployment/modules",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::DeploymentModulesResponse.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
