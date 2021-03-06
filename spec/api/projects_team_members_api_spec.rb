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

# Unit tests for Connectwise::ProjectsTeamMembersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProjectsTeamMembersApi' do
  before do
    # run before each test
    @instance = Connectwise::ProjectsTeamMembersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProjectsTeamMembersApi' do
    it 'should create an instact of ProjectsTeamMembersApi' do
      expect(@instance).to be_instance_of(Connectwise::ProjectsTeamMembersApi)
    end
  end

  # unit tests for project_projects_id_team_members_count_get
  # 
  # Get Team Members Count
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'project_projects_id_team_members_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for project_projects_id_team_members_get
  # 
  # Get Team Members
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<ProjectTeamMember>]
  describe 'project_projects_id_team_members_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for project_projects_id_team_members_post
  # 
  # Create Team Member
  # @param id 
  # @param team_member 
  # @param [Hash] opts the optional parameters
  # @return [ProjectTeamMember]
  describe 'project_projects_id_team_members_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for project_projects_id_team_members_team_member_id_delete
  # 
  # Delete Team Member By Id
  # @param id 
  # @param team_member_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'project_projects_id_team_members_team_member_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for project_projects_id_team_members_team_member_id_get
  # 
  # Get Team Member By Id
  # @param id 
  # @param team_member_id 
  # @param [Hash] opts the optional parameters
  # @return [ProjectTeamMember]
  describe 'project_projects_id_team_members_team_member_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for project_projects_id_team_members_team_member_id_patch
  # 
  # Update Team Member
  # @param id 
  # @param team_member_id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [ProjectTeamMember]
  describe 'project_projects_id_team_members_team_member_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for project_projects_id_team_members_team_member_id_put
  # 
  # Replace Team Member
  # @param id 
  # @param team_member_id 
  # @param team_member 
  # @param [Hash] opts the optional parameters
  # @return [ProjectTeamMember]
  describe 'project_projects_id_team_members_team_member_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
