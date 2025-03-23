# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :node, Types::NodeType, null: true, description: "Fetches an object given its ID." do
      argument :id, ID, required: true, description: "ID of the object."
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    field :nodes, [Types::NodeType, null: true], null: true, description: "Fetches a list of objects given a list of IDs." do
      argument :ids, [ID], required: true, description: "IDs of the objects."
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :category, Types::App::CategoryType, null: true do
      argument :id, ID, required: true
    end

    def category(id:)
      ::Category.find(id)
    end

    field :categories, [Types::App::CategoryType], null: false, description: "Fetch all categories"

    def categories
      ::Category.all
    end

    field :recipe, Types::App::RecipeType, null: true do
      argument :id, ID, required: true
    end

    def recipe(id:)
      ::Recipe.find(id)
    end

    field :recipes, [Types::App::RecipeType], null: false, description: "Fetch all recipes"

    def recipes
      ::Recipe.all
    end
  end
end
