require 'test_helper'
 
class AdminTest < ActiveSupport::TestCase
 
        test "the password should exist" do
        		Admin.destroy_all
                c = Admin.new(:nombre => "asdasd")
                assert_not c.save
        end
 
        test "password length should be six at least" do
                Admin.destroy_all
                c = Admin.new(:nombre => "sadsd", :password => "sd")
                assert_not c.save
        end
 
        test "the name should exist" do
                Admin.destroy_all
                c = Admin.new(:password => "123456")
                assert_not c.save
        end
 
 		test "login" do
 				Admin.destroy_all
 				c = Admin.new(:password => "123456", :nombre => "sos cagon")
 				assert c.login(c.password, c.nombre)
 		end

end