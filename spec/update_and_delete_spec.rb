require 'rspec'
require_relative '../lib/update'
require_relative '../lib/delete'

title = 'UPDATED TEST POST'
post = 'EDIT* Lorem ipsum dolor.'
u = Updater.new
d = Deleter.new
r = Reader.new

describe "update and verify post is updated" do
  it 'should update a post then delete all test rows' do
      u.update_post(title, post, '100008')
      result = r.get_last_post('10008')
      result = result.field_values('title')
      expect(result[-1]).to eq(title)
  end
end
describe "delete post and verify is gone" do
  it 'should delete a post then verify is gone' do
      d.delete_post('100008')
      result = r.get_last_post('10008')
      result = result.field_values('title')
      expect(result[-1]).to eq("")
  end
end
