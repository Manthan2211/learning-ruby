class Ceasercipher

  def encryption(pt,key)
    text=pt.delete(" ").scan(/./)
    b=text.map{|c| c.ord}
    en_text=b.each.map{|enc_text| enc_text+=key}
    en_text=en_text.map{|n| n>122 ? (n-26).chr : n.chr}
    en_text.join("")
  end

  def decryption(ct,key)
    ct=ct.scan(/./)
    b=ct.map{|c| c.ord}
    en_text=b.each.map{|enc_text| enc_text-=key}
    en_text=en_text.map{|n| n<97 ? (n+26).chr : n.chr}
    en_text.join("")
  end
end

puts "Enter the Plaintext"
pt=gets
puts "Enter the Key"
key=gets

pt=pt.downcase
pt=pt.to_s
key=key.to_i

cc=Ceasercipher.new
ct=cc.encryption(pt,key)
puts "Encrypted Text #{ct}"

puts "do you want perform Decryption? y:n"
ans=gets.chomp
if ans == "y"

  puts "decrypted text #{cc.decryption(ct,key)}"

else

  puts "bye"

end 