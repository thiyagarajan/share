require "share/helpers"
require "share/engine"

module Share
end

ActionView::Base.send :include, Share::Helpers
