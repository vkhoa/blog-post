module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :all_users, [Types::UserType], null: false

    field :user, Types::UserType, null: false do
      description 'Find user by ID'
      argument :id, ID, required: true
    end

    def all_users
        User.all
    end

    def user(id:)
      User.find(id)
    end
  end
end
