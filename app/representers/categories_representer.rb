class CategoriesRepresenter
  def initialize(categories)
    @categories = categories
  end

  def as_json
    categories.map do |category|
      {
        id: category.id,
        name: category.name
      }
    end
  end

  private

  attr_reader :categories
end
