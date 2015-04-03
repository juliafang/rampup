



# def encrypt!(*args)
# 	encrypted_string = encrypt(*args)
# 	self.cipher = encrypted_string.cipher

# 	replace(encrypted_string)
# end

# password = 'This is a secret'
# password.encrypt!(:symmetric, :password => 'This is a secret')
# password

class Cipher

  def initialize(shuffled)
    normal = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + [' ']
    @map = normal.zip(shuffled).inject(:encrypt => {} , :decrypt => {}) do |hash,(a,b)|
      hash[:encrypt][a] = b
      hash[:decrypt][b] = a
      hash
    end
  end

  def encrypt(str)
    str.split(//).map { |char| @map[:encrypt][char] }.join
  end

  def decrypt(str)
    str.split(//).map { |char| @map[:decrypt][char] }.join
  end

end

# pass the shuffled version to the cipher
cipher = Cipher.new ["K", "D", "w", "X", "H", "3", "e", "1", "S", "B", "g", "a", "y", "v", "I", "6", "u", "W", "C", "0", "9", "b", "z", "T", "A", "q", "U", "4", "O", "o", "E", "N", "r", "n", "m", "d", "k", "x", "P", "t", "R", "s", "J", "L", "f", "h", "Z", "j", "Y", "5", "7", "l", "p", "c", "2", "8", "M", "V", "G", "i", " ", "Q", "F"]

msg = "This is a secret"

crypted = cipher.encrypt msg
crypted # => "jhsdakha%crryj3jb""

puts crypted

decrypted = cipher.decrypt crypted
decrypted # => "This is a secret"
puts decrypted