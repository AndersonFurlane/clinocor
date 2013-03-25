class Patient
  #include
  include Mongoid::Document
  include Mongoid::Paperclip

  #associations
  has_many :medic

  #atributes | idade nao salva no banco e feito na view por um helper
  field :name, type: String
  field :date_birth, type: Date
  field :sex, type: String
  field :covenant, type: String
  field :description, type: String

  #associations
  belongs_to :medic

  validates_presence_of :name, :date_birth, :sex, :covenant, :medic


end