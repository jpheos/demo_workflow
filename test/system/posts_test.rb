require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  test "display vote" do
    visit root_url
    post = Post.last
    votes = post.votes
    assert_selector "#post_#{post.id}", text: post.votes
  end

  test "display all votes" do
    visit root_url
    assert_selector('.post_card', count: Post.count)
  end

  test "vote" do
    visit root_url
    post = Post.last
    votes = post.votes
    click_on("vote_#{post.id}")
    assert_selector "#post_#{post.id}", text: votes + 1
  end
end
