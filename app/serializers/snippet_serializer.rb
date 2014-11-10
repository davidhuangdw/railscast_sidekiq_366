class SnippetSerializer < ActiveModel::Serializer
  attributes :id, :name, :plain_code, :highlighted_code, :language
end
