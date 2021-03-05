class BooksRepresenter
  def initialize(books)
    @books = books
  end

  def as_json
    books.map do |book|
      {
        id: book.id,
        title: book.title,
        author: book.author,
        category: Category.find(book.id).name,
        date_added: book.created_at
      }
    end
  end

  private

  attr_reader :books
end
