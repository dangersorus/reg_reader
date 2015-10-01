class FeedController < ApplicationController
before_action :authenticate_user!
def index
  url =  'http://www.theregister.co.uk/software/headlines.atom'
  @feed = Feedjira::Feed.fetch_and_parse url
  #get userlinks cause we gunna need 'em
  @user_links = current_user.user_links.pluck(:tag)
end

end
