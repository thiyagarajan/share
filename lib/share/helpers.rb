module Share
  module Helpers
    def share_links text
      url = request.url
      content_tag :ul, :class => "share-container" do |content|
        { :twitter => "http://twitter.com/intent/tweet?&text=" + URI.encode("#{text} #{url})"),
          :facebook => "http://facebook.com/sharer.php?u=#{url}",
          :google => "https://plus.google.com/share?url=#{url}"}.map do |key, value|
            content_tag(:li,
              link_to("", value, :title => "Share on #{key.to_s.humanize}", :class => "share-link #{key}",
                "onclick" => "javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"
              ), :class => "share-item")
        end.join.html_safe
      end
    end
  end
end
