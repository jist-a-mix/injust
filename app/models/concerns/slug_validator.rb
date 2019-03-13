class SlugValidator < ActiveModel::EachValidator
  ROOT_SLUG_MODELS = %w(Post User)

  def validate_each(record, attribute, value)
    record.errors.add(attribute, "has already been taken") unless valid_slug?(value)
  end
  
  private

  def valid_slug?(value)
    ROOT_SLUG_MODELS.each do |model|
      model = model.constantize
      return false if model.friendly.exists_by_friendly_id?(value)
    end
  end
end
