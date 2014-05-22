require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

	test "the body should exist"  do
		c = Article.new(:autor => "lelele", :article => "bleble")
		assert_not c.save
	end

	test "the autor should exist" do
		c = Article.new(:cuerpo => "sadsd", :article => "lelelelffasd")
		assert_not c.save
	end

	test "the article should exist" do
		c = Article.new(:cuerpo => "jfjfjf", :cuerpo => "fjfjfkfl")
		assert_not c.save
	end

	test "the article should be unique" do
		Article.create!(:article => "unico", :autor => "gegege", :cuerpo => "lleno")
		c = Article.new(:article => "unico", :autor => "gegege", :cuerpo => "lleno")
		assert_not c.save
	end
		
end
