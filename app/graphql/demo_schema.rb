# frozen_string_literal: true

require 'graphql/directives/include'

class DemoSchema < GraphQL::Schema
  use GraphQL::Batch
  use GraphQL::Execution::Interpreter
  directive(GraphQL::Directives::MySpecialInclude)

  query(BaseQuery)
end
