require 'rspec'
require_relative '../lib/update'
require_relative '../lib/delete'

title = "TEST POST"
post = 'Lorem ipsum dolor.'
u = Updater.new
d = Deleter.new

describe "update and delte a post" do
  it 'should update a post then delete all test rows' do
      u.update_post(title, post, r.get_last_post('post_id'))
      result = r.get_last_post('title', title)
      result = result.field_values('title')
      expect(result[-1]).to eq(title)
  end
end
