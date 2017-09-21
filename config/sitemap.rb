# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://tradfood.fr"

SitemapGenerator::Sitemap.create(:compress => false) do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  add '/a-propos', :changefreq => 'monthly'

  City.find_each do |city|
    add city_path(city.name.parameterize), :lastmod => city.updated_at, :changefreq => 'weekly', :priority => 0.8
  end

  Recipe.find_each do |recipe|
    add recipe_path(recipe.city.name.parameterize, recipe.name.parameterize), :lastmod => recipe.updated_at, :changefreq => 'daily'
  end

end
