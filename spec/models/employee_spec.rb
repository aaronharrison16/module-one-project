RSpec.describe Employee, type: :model do
  describe 'creation' do
    before do 
      @employee = Employee.create(email: "employee@test.com", password: 'password', password_confirmation: 'password', first_name: 'Ron', last_name: 'Swanson')
    end

    it 'can be created' do
      expect(@employee).to be_valid
    end

    it 'cannot be created without first_name, last_name' do
      @employee.first_name = nil
      @employee.last_name = nil

      expect(@employee).to_not be_valid
    end
  end
end




