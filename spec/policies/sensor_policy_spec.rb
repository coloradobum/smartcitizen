require 'spec_helper'

describe SensorPolicy do
  subject { SensorPolicy.new(user, sensor) }

  let(:sensor) { FactoryGirl.create(:sensor) }

  context "for a visitor" do
    let(:user) { nil }
    it { is_expected.to permitz(:show) }
    it { is_expected.to_not permitz(:update) }
    it { is_expected.to_not permitz(:create) }
  end

  context "for a user" do
    let(:user) { FactoryGirl.create(:user) }
    it { is_expected.to permitz(:show) }
    it { is_expected.to_not permitz(:update) }
    it { is_expected.to permitz(:create) }
  end

end
