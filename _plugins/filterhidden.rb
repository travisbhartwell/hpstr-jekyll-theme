module Jekyll
  module HiddenFilter
    def filter_hidden_posts(posts)
      filtered = []
      for post in posts
        if ! post.data.has_key? "hidden"
          filtered.push(post)
        end
      end
      return filtered
    end
  end
end

Liquid::Template.register_filter(Jekyll::HiddenFilter)
