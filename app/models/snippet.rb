class Snippet < ActiveRecord::Base
  default_scope ->{order('updated_at desc')}
  def generate_highlight_code
    request = Net::HTTP.post_form(URI.parse('http://pygments.appspot.com'),
                                  {'lang'=>language, 'code'=>plain_code})
    update_attribute(:highlighted_code, request.body)
  end
end
