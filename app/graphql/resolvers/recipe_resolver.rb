# app/graphql/resolvers/post_resolver.rb

module Resolvers
  class RecipeResolver < BaseResolver
    type Types::RecipeType, null: false
    argument :id, ID

    def resolve(id:)
      ::Recipe.find(id)
    end
  end
end
