# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "ItemRecords" do
  describe "GET /item_records" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get item_records_path
      response.status.should be(200)
    end
  end
end
