require 'rails_helper'

RSpec.describe Round, type: :model do
  it { is_expected.to validate_presence_of(:score) }
  it { is_expected.to validate_presence_of(:course) }
  it { is_expected.to validate_presence_of(:greens) }
  it { is_expected.to validate_presence_of(:fwys) }
  it { is_expected.to validate_presence_of(:putts) }
  it { is_expected.to validate_presence_of(:birdies) }
  it { is_expected.to validate_presence_of(:pars) }
end
