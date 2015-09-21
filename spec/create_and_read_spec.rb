require 'rspec'
require_relative '../lib/read'
require_relative '../lib/create'

title = "TEST POST"
post = 'Lorem ipsum dolor.'
c = Creator.new
r = Reader.new

describe "Create and read a post" do
  it 'should store a post then verify it''s present in db' do
      c.insert_post(title, post)
      r = r.get_last_post('10008')
      result = r.field_values('title')
      expect(result[-1]).to eq(title)
  end
end
