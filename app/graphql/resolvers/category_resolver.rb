# app/graphql/resolvers/post_resolver.rb

module Resolvers
  class CategoryResolver < BaseResolver
    type Types::CategoryType, null: false
    argument :id, ID

    def resolve(id:)
      ::Category.find(id)
    end
  end
end
