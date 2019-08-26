GraphiQL::Rails.config.initial_query = <<QUERY
{
  currentUser{
    updatedAt
    createdAt @myspecialinclude(ifElement: "a", inArray: ["b"])
  }
}
QUERY
