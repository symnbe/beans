RSpec.describe User, type: :model do
  describe '#bean_count' do
    it 'returns the correct count of beans' do
      user = FactoryBot.create(:user)

      FactoryBot.create_list(:bean, 3, user: user)

      expect(user.bean_count).to eq(3)
    end
  end
end