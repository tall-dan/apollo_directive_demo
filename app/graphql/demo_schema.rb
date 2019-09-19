# frozen_string_literal: true

require 'graphql/directives/include_translation'

class DemoSchema < GraphQL::Schema
  use GraphQL::Batch
  use GraphQL::Execution::Interpreter
  directive(GraphQL::Directives::IncludeTranslation)

  query(BaseQuery)
end
