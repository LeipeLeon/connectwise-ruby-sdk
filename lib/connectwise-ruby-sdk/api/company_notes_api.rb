=begin
#Connectwise REST API

#ConnectWise API

OpenAPI spec version: 1.0.0
Contact: platform@connectwise.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module Connectwise
  class CompanyNotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Company Notes Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_companies_id_notes_count_get(id, opts = {})
      data, _status_code, _headers = company_companies_id_notes_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Company Notes Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_companies_id_notes_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_count_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_count_get" if id.nil?
      # resource path
      local_var_path = "/company/companies/{id}/notes/count".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Company Notes
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<CompanyNote>]
    def company_companies_id_notes_get(id, opts = {})
      data, _status_code, _headers = company_companies_id_notes_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Company Notes
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<CompanyNote>, Fixnum, Hash)>] Array<CompanyNote> data, response status code and response headers
    def company_companies_id_notes_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_get" if id.nil?
      # resource path
      local_var_path = "/company/companies/{id}/notes".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<CompanyNote>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Company Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_companies_id_notes_note_id_delete(id, note_id, opts = {})
      company_companies_id_notes_note_id_delete_with_http_info(id, note_id, opts)
      return nil
    end

    # 
    # Delete Company Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_companies_id_notes_note_id_delete_with_http_info(id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_note_id_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_note_id_delete" if id.nil?
      # verify the required parameter 'note_id' is set
      fail ArgumentError, "Missing the required parameter 'note_id' when calling CompanyNotesApi.company_companies_id_notes_note_id_delete" if note_id.nil?
      # resource path
      local_var_path = "/company/companies/{id}/notes/{noteId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_note_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Company Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [CompanyNote]
    def company_companies_id_notes_note_id_get(id, note_id, opts = {})
      data, _status_code, _headers = company_companies_id_notes_note_id_get_with_http_info(id, note_id, opts)
      return data
    end

    # 
    # Get Company Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyNote, Fixnum, Hash)>] CompanyNote data, response status code and response headers
    def company_companies_id_notes_note_id_get_with_http_info(id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_note_id_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_note_id_get" if id.nil?
      # verify the required parameter 'note_id' is set
      fail ArgumentError, "Missing the required parameter 'note_id' when calling CompanyNotesApi.company_companies_id_notes_note_id_get" if note_id.nil?
      # resource path
      local_var_path = "/company/companies/{id}/notes/{noteId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_note_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Company Note
    # @param id 
    # @param note_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [CompanyNote]
    def company_companies_id_notes_note_id_patch(id, note_id, operations, opts = {})
      data, _status_code, _headers = company_companies_id_notes_note_id_patch_with_http_info(id, note_id, operations, opts)
      return data
    end

    # 
    # Update Company Note
    # @param id 
    # @param note_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyNote, Fixnum, Hash)>] CompanyNote data, response status code and response headers
    def company_companies_id_notes_note_id_patch_with_http_info(id, note_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_note_id_patch ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_note_id_patch" if id.nil?
      # verify the required parameter 'note_id' is set
      fail ArgumentError, "Missing the required parameter 'note_id' when calling CompanyNotesApi.company_companies_id_notes_note_id_patch" if note_id.nil?
      # verify the required parameter 'operations' is set
      fail ArgumentError, "Missing the required parameter 'operations' when calling CompanyNotesApi.company_companies_id_notes_note_id_patch" if operations.nil?
      # resource path
      local_var_path = "/company/companies/{id}/notes/{noteId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(operations)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_note_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Company Note
    # @param id 
    # @param note_id 
    # @param company_note 
    # @param [Hash] opts the optional parameters
    # @return [CompanyNote]
    def company_companies_id_notes_note_id_put(id, note_id, company_note, opts = {})
      data, _status_code, _headers = company_companies_id_notes_note_id_put_with_http_info(id, note_id, company_note, opts)
      return data
    end

    # 
    # Replace Company Note
    # @param id 
    # @param note_id 
    # @param company_note 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyNote, Fixnum, Hash)>] CompanyNote data, response status code and response headers
    def company_companies_id_notes_note_id_put_with_http_info(id, note_id, company_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_note_id_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_note_id_put" if id.nil?
      # verify the required parameter 'note_id' is set
      fail ArgumentError, "Missing the required parameter 'note_id' when calling CompanyNotesApi.company_companies_id_notes_note_id_put" if note_id.nil?
      # verify the required parameter 'company_note' is set
      fail ArgumentError, "Missing the required parameter 'company_note' when calling CompanyNotesApi.company_companies_id_notes_note_id_put" if company_note.nil?
      # resource path
      local_var_path = "/company/companies/{id}/notes/{noteId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(company_note)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_note_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Company Note
    # @param id 
    # @param company_note 
    # @param [Hash] opts the optional parameters
    # @return [CompanyNote]
    def company_companies_id_notes_post(id, company_note, opts = {})
      data, _status_code, _headers = company_companies_id_notes_post_with_http_info(id, company_note, opts)
      return data
    end

    # 
    # Create Company Note
    # @param id 
    # @param company_note 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyNote, Fixnum, Hash)>] CompanyNote data, response status code and response headers
    def company_companies_id_notes_post_with_http_info(id, company_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_post ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_post" if id.nil?
      # verify the required parameter 'company_note' is set
      fail ArgumentError, "Missing the required parameter 'company_note' when calling CompanyNotesApi.company_companies_id_notes_post" if company_note.nil?
      # resource path
      local_var_path = "/company/companies/{id}/notes".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(company_note)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
