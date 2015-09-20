require 'rspec'
require_relative '../lib/read'
require_relative '../lib/create'

describe Creator < Reader do

describe "Create and read a post" do
  it 'should store a post' do
      date = Time.new
      title = "TEST POST #{date.to_s}"
      post = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
      c = Creator.new
      r = Reader.new
      c.insert_post(title, post)
      result = r.get_last_post('title')
      expect(result[0]).to eq(title)
    end
  end
end
