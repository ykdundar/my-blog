require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
   test "draft? returns true for draft blog post" do
     BlogPost.new(published_at: nil).draft?
   end
end
