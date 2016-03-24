require 'rails_helper'

RSpec.describe Car, type: :model do
  it { is_expected.to validate_presence_of(:model) }
  it { is_expected.to validate_presence_of(:year) }
  it { is_expected.to validate_presence_of(:price) }
  it { is_expected.to validate_presence_of(:make) }
end
