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

require 'spec_helper'
require 'json'

# Unit tests for Connectwise::GroupCompaniesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GroupCompaniesApi' do
  before do
    # run before each test
    @instance = Connectwise::GroupCompaniesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupCompaniesApi' do
    it 'should create an instact of GroupCompaniesApi' do
      expect(@instance).to be_instance_of(Connectwise::GroupCompaniesApi)
    end
  end

  # unit tests for marketing_groups_id_companies_company_id_delete
  # 
  # Delete Marketing Company By Id
  # @param id 
  # @param company_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'marketing_groups_id_companies_company_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketing_groups_id_companies_company_id_get
  # 
  # Get Marketing Company By Id
  # @param id 
  # @param company_id 
  # @param [Hash] opts the optional parameters
  # @return [MarketingCompany]
  describe 'marketing_groups_id_companies_company_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketing_groups_id_companies_company_id_patch
  # 
  # Update Marketing Company
  # @param id 
  # @param company_id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [MarketingCompany]
  describe 'marketing_groups_id_companies_company_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketing_groups_id_companies_company_id_put
  # 
  # Replace Marketing Company
  # @param id 
  # @param company_id 
  # @param marketing_company 
  # @param [Hash] opts the optional parameters
  # @return [MarketingCompany]
  describe 'marketing_groups_id_companies_company_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketing_groups_id_companies_count_get
  # 
  # Get Marketing Companys Count
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'marketing_groups_id_companies_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketing_groups_id_companies_get
  # 
  # Get Marketing Companys
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<MarketingCompany>]
  describe 'marketing_groups_id_companies_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for marketing_groups_id_companies_post
  # 
  # Create Marketing Company
  # @param id 
  # @param marketing_company 
  # @param [Hash] opts the optional parameters
  # @return [MarketingCompany]
  describe 'marketing_groups_id_companies_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
