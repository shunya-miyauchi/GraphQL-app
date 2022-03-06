module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :blogs, [Types::BlogType],null: false
    def blogs
      context[:blogs]
    end

    field :blog, Types::BlogType,null: false
    def blog
      context[:blog]
    end
  end
end
