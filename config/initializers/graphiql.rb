# frozen_string_literal: true

GraphiQL::Rails.config.initial_query = <<~QUERY
  {
    currentUser{
      updatedAt
      createdAt @includetranslation(ifElement: "a", inArray: ["b"])
    }
  }
QUERY
