require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

   test "the name should be unique" do
   	 Category.create!(:nombre => "holis")
   	 c = Category.new(:nombre => "holis")
     assert_not c.save 
   end

   test "the name should exist" do
   		c = Category.new
   		assert_not c.save
   	end
end
