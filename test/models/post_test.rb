require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "post save" do
    post = Post.new({
        title: '포스트 테스트',
        content: '잘 되나?',
        user_id: 1
      })
    assert post.save, 'Failed to save'
  end

  test "post length validation" do
    post = Post.new({
        title: Faker::Lorem.paragraph(sentence_count = 10),
        content: Faker::Lorem.paragraph(sentence_count = 10),
        user_id: 1
      })
    refute post.save, 'Validation Success'
  end
end
