class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page], per_page: 3)
    end
    @message_items = Message.paginate(page: params[:page], per_page: 4)

  end

  def help
  end

  def about
  end

  def contact
  end

end
