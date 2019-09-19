# frozen_string_literal: true

require 'graphql'
module GraphQL
  module Directives
    class IncludeTranslation < GraphQL::Schema::Directive
      locations(
        GraphQL::Schema::Directive::FIELD,
        GraphQL::Schema::Directive::FRAGMENT_SPREAD,
        GraphQL::Schema::Directive::INLINE_FRAGMENT
      )

      argument :in_array,
               [GraphQL::Types::String],
               required: false,
               description: 'Permissible values for the `if_element` argument',
               default_value: []

      argument :if_element,
               GraphQL::Types::String,
               required: false,
               description: 'A string to be searched for in `in_array`'

      def self.include?(_obj, args, _ctx)
        return !!args[:if] if args.key?(:if) # rubocop:disable Style/DoubleNegation

        permissible_vals = Array(args[:in_array])
        permissible_vals.include?(args[:if_element])
      end
    end
  end
end
