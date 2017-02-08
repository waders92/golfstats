require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { is_expected.to validate_presence_of(:message) }
  it { is_expected.to have_db_column(:message) }
  it { is_expected.to belong_to(:round) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_db_index(:round_id) }
  it { is_expected.to have_db_index(:user_id) }
end
