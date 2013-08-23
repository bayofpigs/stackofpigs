module ApplicationHelper

  # Returns the full title of a given page  
  def full_title(page_title)
    base_title = "Stack of Pigs"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  # Fetches the Gravatar for the given email
  def gravatar_for(email)
    gravatar_id = Digest::MD5::hexdigest(email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: "Gravatar", class: "gravatar")
  end
end
