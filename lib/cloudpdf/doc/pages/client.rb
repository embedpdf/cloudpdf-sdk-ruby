# frozen_string_literal: true

module Cloudpdf
  module Doc
    module Pages
      class Client
        # @param client [Cloudpdf::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # @param request_options [Hash]
        # @param params [Cloudpdf::Types::DocPagesDeleteRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.pages.delete(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     request: {
        #       key: "value"
        #     }
        #   )
        #
        # @return [Cloudpdf::Types::DocPagesDelete200Response]
        def delete(request_options: {}, **params)
          params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = Cloudpdf::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/pages/delete",
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
            Cloudpdf::Types::DocPagesDelete200Response.load(response.body)
          else
            error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [Cloudpdf::Types::DocPagesFlattenRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.pages.flatten(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     request: {
        #       key: "value"
        #     }
        #   )
        #
        # @return [Cloudpdf::Types::DocPagesFlatten200Response]
        def flatten(request_options: {}, **params)
          params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = Cloudpdf::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/pages/flatten",
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
            Cloudpdf::Types::DocPagesFlatten200Response.load(response.body)
          else
            error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [Cloudpdf::Types::DocPagesMoveRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.pages.move(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     request: {
        #       key: "value"
        #     }
        #   )
        #
        # @return [Cloudpdf::Types::DocPagesMove200Response]
        def move(request_options: {}, **params)
          params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = Cloudpdf::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/pages/move",
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
            Cloudpdf::Types::DocPagesMove200Response.load(response.body)
          else
            error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [Cloudpdf::Types::DocPagesRotateRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.pages.rotate(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     request: {
        #       key: "value"
        #     }
        #   )
        #
        # @return [Cloudpdf::Types::DocPagesRotate200Response]
        def rotate(request_options: {}, **params)
          params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = Cloudpdf::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/pages/rotate",
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
            Cloudpdf::Types::DocPagesRotate200Response.load(response.body)
          else
            error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
