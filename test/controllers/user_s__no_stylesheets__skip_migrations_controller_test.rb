require 'test_helper'

class UserSNoStylesheetsSkipMigrationsControllerTest < ActionController::TestCase
  setup do
    @user_s__no_stylesheets__skip_migration = user_s__no_stylesheets__skip_migrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_s__no_stylesheets__skip_migrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_s__no_stylesheets__skip_migration" do
    assert_difference('UserSNoStylesheetsSkipMigration.count') do
      post :create, user_s__no_stylesheets__skip_migration: {  }
    end

    assert_redirected_to user_s__no_stylesheets__skip_migration_path(assigns(:user_s__no_stylesheets__skip_migration))
  end

  test "should show user_s__no_stylesheets__skip_migration" do
    get :show, id: @user_s__no_stylesheets__skip_migration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_s__no_stylesheets__skip_migration
    assert_response :success
  end

  test "should update user_s__no_stylesheets__skip_migration" do
    patch :update, id: @user_s__no_stylesheets__skip_migration, user_s__no_stylesheets__skip_migration: {  }
    assert_redirected_to user_s__no_stylesheets__skip_migration_path(assigns(:user_s__no_stylesheets__skip_migration))
  end

  test "should destroy user_s__no_stylesheets__skip_migration" do
    assert_difference('UserSNoStylesheetsSkipMigration.count', -1) do
      delete :destroy, id: @user_s__no_stylesheets__skip_migration
    end

    assert_redirected_to user_s__no_stylesheets__skip_migrations_path
  end
end
