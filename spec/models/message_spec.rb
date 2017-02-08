require 'rails_helper'

RSpec.describe Message, type: :model do
  it { is_expected.to validate_presence_of(:message) }
  it { is_expected.to have_db_column(:message) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_db_index(:user_id) }
end
