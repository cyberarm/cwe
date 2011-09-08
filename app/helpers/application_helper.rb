module ApplicationHelper
 def removehttp(text)
  (text).gsub("http://", "").gsub("https://", "")
 end
 def is_user?
  current_user.id == @requester.id
 end 
end
