class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :encrypted_password , :address
 

end
