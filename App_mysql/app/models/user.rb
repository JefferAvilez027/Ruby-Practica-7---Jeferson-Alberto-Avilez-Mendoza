class User < ApplicationRecord
  # Validaciones
  validates :name, presence: true, length: { maximum: 15 }
  validates :password, presence: true, length: { is: 8 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :programador, inclusion: { in: [true, false] }
  validates :birthday, presence: true
  validates :work_time, presence: true
  validates_presence_of :name, presence: true
  validates_format_of :name, :with => /\A[a-zA-Z]+\z/
  validates :name, length: { maximum: 15 },on: :create

  validates_presence_of :password, presence: true
  validates_length_of :password, is: 8
  
  validates_presence_of :email, presence: true
  validates_uniqueness_of :email
  validates_format_of :email, with: /@/

  context "email" do
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should_not allow_value("text").for(:email) }
    it { should allow_value("a@b.com").for(:email) }
    end

    
end

