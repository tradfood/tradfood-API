module SlugHelper
  def slugify(text)
    return text.parameterize
  end
  def unslugify(slug)
    return slug.tr('-', ' ')
  end
end
