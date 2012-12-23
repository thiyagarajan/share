# SHARE

    gem "share"

SHARE adds a Rails helper to include simple social share links

    <%= share_links @post.title %>

This adds Twitter/Facebook/Google+ links to share the current page, the title is used in the twitter link

To use the css that adds social icons to the links above (using the [simple social icons by pixeden](http://www.pixeden.com/social-icons))

    *= require share/icons
