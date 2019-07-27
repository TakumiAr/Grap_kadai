module Types
  class QueryType < Types::BaseObject
    field :blog, Types::BlogType, null: false do
      argument :id, Int, required: false
    end
    def blog(id:)
      Blog.find(id)
    end

    def blog(id: nil)
      id ? Blog.find(id) : Blog.first
    end
  end
end