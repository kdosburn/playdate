require "rubygems"
require "json"
require "net/http"
require "uri"

module UsersHelper


  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    # gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    gravatar_url = "grumpy_icon_50.jpg"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end