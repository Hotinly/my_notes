require 'test_helper'

class BknotesControllerTest < ActionController::TestCase
  setup do
    @bknote = bknotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bknotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bknote" do
    assert_difference('Bknote.count') do
      post :create, bknote: { book_id: @bknote.book_id, name: @bknote.name, note: @bknote.note, page: @bknote.page, practice: @bknote.practice, referdoc: @bknote.referdoc, referurl: @bknote.referurl, unit: @bknote.unit }
    end

    assert_redirected_to bknote_path(assigns(:bknote))
  end

  test "should show bknote" do
    get :show, id: @bknote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bknote
    assert_response :success
  end

  test "should update bknote" do
    patch :update, id: @bknote, bknote: { book_id: @bknote.book_id, name: @bknote.name, note: @bknote.note, page: @bknote.page, practice: @bknote.practice, referdoc: @bknote.referdoc, referurl: @bknote.referurl, unit: @bknote.unit }
    assert_redirected_to bknote_path(assigns(:bknote))
  end

  test "should destroy bknote" do
    assert_difference('Bknote.count', -1) do
      delete :destroy, id: @bknote
    end

    assert_redirected_to bknotes_path
  end
end
