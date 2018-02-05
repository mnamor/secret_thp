class User < ApplicationRecord
  before_save  {  self . email  =  email . downcase  }
  valide  : nom ,  présence :  vrai ,  longueur :  {  maximum :  50  }
  VALID_EMAIL_REGEX  =  /\A[\w+\-.]+@[az\d\-.]+\.[az]+\z/i
  valide  : email ,  présence :  vrai ,  longueur :  {  maximum :  255  },
                    format :  { avec :  VALID_EMAIL_REGEX  },
                    unicité :  {  case_sensitive :  false  }
has_secure_password 
end
