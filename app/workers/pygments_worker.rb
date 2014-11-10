class PygmentsWorker
  include Sidekiq::Worker
  def perform(snippet_id)
    Snippet.find(snippet_id).generate_highlight_code
  end
end