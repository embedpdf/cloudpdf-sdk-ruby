# frozen_string_literal: true

module Cloudpdf
  module Doc
    module Annotations
      class Client
        # @param client [Cloudpdf::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [Integer] :pon
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.annotations.list(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     pon: 1
        #   )
        #
        # @return [Cloudpdf::Types::DocAnnotationsList200Response]
        def list(request_options: {}, **params)
          params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = Cloudpdf::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/annotations/pages/#{URI.encode_uri_component(params[:pon].to_s)}/items",
            headers: headers,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Cloudpdf::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Cloudpdf::Types::DocAnnotationsList200Response.load(response.body)
          else
            error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Doc JWTs may instead carry collab scopes (annotations:create:self, …) that refine per-annotation authorship
        # rules; the API token is exempt from both.
        #
        # @param request_options [Hash]
        # @param params [Cloudpdf::Types::DocAnnotationsCreateRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [Integer] :pon
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.annotations.create(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     pon: 1,
        #     request: {
        #       key: "value"
        #     }
        #   )
        #
        # @return [Cloudpdf::Types::DocAnnotationsCreate200Response]
        def create(request_options: {}, **params)
          params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name pon]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = Cloudpdf::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/annotations/pages/#{URI.encode_uri_component(params[:pon].to_s)}/items",
            headers: headers,
            body: body_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Cloudpdf::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Cloudpdf::Types::DocAnnotationsCreate200Response.load(response.body)
          else
            error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [Integer] :pon
        # @option params [String] :annot_key
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.annotations.delete(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     pon: 1,
        #     annot_key: "annotKey"
        #   )
        #
        # @return [Cloudpdf::Types::DocAnnotationsDelete200Response]
        def delete(request_options: {}, **params)
          params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = Cloudpdf::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/annotations/pages/#{URI.encode_uri_component(params[:pon].to_s)}/items/#{URI.encode_uri_component(params[:annot_key].to_s)}",
            headers: headers,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Cloudpdf::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Cloudpdf::Types::DocAnnotationsDelete200Response.load(response.body)
          else
            error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [Cloudpdf::Types::DocAnnotationsUpdateRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [Integer] :pon
        # @option params [String] :annot_key
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.annotations.update(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     pon: 1,
        #     annot_key: "annotKey",
        #     request: {
        #       key: "value"
        #     }
        #   )
        #
        # @return [Cloudpdf::Types::DocAnnotationsUpdate200Response]
        def update(request_options: {}, **params)
          params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name pon annot_key]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = Cloudpdf::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PATCH",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/annotations/pages/#{URI.encode_uri_component(params[:pon].to_s)}/items/#{URI.encode_uri_component(params[:annot_key].to_s)}",
            headers: headers,
            body: body_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Cloudpdf::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Cloudpdf::Types::DocAnnotationsUpdate200Response.load(response.body)
          else
            error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
