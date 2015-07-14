class User < ActiveRecord::Base

  # Authentication Stuff

  has_secure_password

  before_create :set_token
  after_find :fix_up_token

  validates :email, uniqueness: true

  def authenticate_with_new_token(password)
    authentiate_without_new_token(password) && new_token
  end

  alias_method_chain :authenticate, :new_token

  private

  # FIXME: Validate that token doesn't exist> (improbable)
  def set_token
    self.token = SecureRandom.hex(16)
  end

  # unconditionallu create ta set a new token
  def new_token
    update_columns(token: set_token, updated_at: Time.current)
  end

  # expire old token
  def fix_up_token
    #FIXME toekn age should  be configuragble
    new_token if updated_at < 1.day.ago
  end

end
