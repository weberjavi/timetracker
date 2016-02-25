module ApplicationHelper
  # Displays the messages in the views
  # In the view should be called <%= flash_messages %>
  def flash_messages
    if flash[:notice]
      flash_format(flash[:notice], "notice")
    elsif flash[:alert]
      flash_format(flash[:alert], "alert")
    end 
  end

private
#Private methods are used only inside the helper
  def flash_format(flash, clase)
    content_tag :div, class: "message #{clase}" do 
      content_tag :p do  
          flash
        end
      end
  end


end
