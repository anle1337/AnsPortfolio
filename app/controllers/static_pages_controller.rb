class StaticPagesController < ApplicationController
  def home
    @message = ContactMessage.new
  end

  def test
  end
end
