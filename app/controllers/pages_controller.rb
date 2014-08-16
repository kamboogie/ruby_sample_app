class PagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
    page_title = "Help"
  end
  
  def contact
    page_title = "Contact"
  end
  
  def about
    page_title = "About"
  end
  
end
