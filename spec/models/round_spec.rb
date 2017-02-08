require 'rails_helper'

RSpec.describe Round, type: :model do
  it { is_expected.to validate_presence_of(:score) }
  it { is_expected.to validate_presence_of(:course) }
  it { is_expected.to validate_presence_of(:greens) }
  it { is_expected.to validate_presence_of(:fwys) }
  it { is_expected.to validate_presence_of(:putts) }
  it { is_expected.to validate_presence_of(:birdies) }
  it { is_expected.to validate_presence_of(:pars) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:comments) }
  it { is_expected.to have_db_column(:course) }
  it { is_expected.to have_db_column(:score) }
  it { is_expected.to have_db_column(:greens) }
  it { is_expected.to have_db_column(:fwys) }
  it { is_expected.to have_db_column(:putts) }
  it { is_expected.to have_db_column(:pars) }
  it { is_expected.to have_db_column(:birdies) }
  it { is_expected.to have_db_index(:user_id) }
end
