require 'rspec'
require_relative '../lib/read'
require_relative '../lib/create'

title = 'TEST POST'
post = 'Lorem ipsum dolor.'
new_title = 'UPDATED TEST POST'
new_post = post = 'Edit** Lorem ipsum dolor.'
c = Creator.new
r = Reader.new
u = Updater.new
d = Deleter.new

describe "Create and verify a post was inserted" do
  it 'should store a post then verify it''s present in db' do
      c.insert_post(title, post)
      res = r.get_post(title)
      result = res.field_values('title')
      expect(result[-1]).to eq(title)
  end
end

describe "update and verify post is updated" do
  it 'should update a post then delete all test rows' do
      u.update_post(new_title, new_post, title)
      res = r.get_post(new_title)
      result = res.field_values('title')
      expect(result[-1]).to eq(new_title)
  end
end

describe "delete post and verify post is gone" do
  it 'should delete a post then verify is gone' do
      d.delete_post(new_title)
      res = r.get_post(title)
      result = res.field_values('title')
      expect(result[-1]).to eq(nil)
  end
end
