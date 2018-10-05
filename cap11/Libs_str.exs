String.at("dog",0) 
# "d"
String.at("dog", -1)
# "g"
String.capitalize "nOME"
# "Nome"
String.codepoints ("Nome alguem")
# ["N", "o", "m", "e", " ", "a", "l", "g", "u", "e", "m"]
String.downcase "NOME"
# "nome"
String.duplicate "Ho!" ,3
# "Ho!Ho!Ho!"
String.ends_with? "string", ["elix", "stri", "ring"]
# true
String.first "dog"
# "d"
String.codepoints "noe\u0308l"
# ["n", "o", "e", "̈", "l"]
String.graphemes "noe\u0308l"
# ["n", "o", "ë", "l"]
String.jaro_distance("jonathan", "jonathon")
# 0.9166666666666666
String.last "dog"
# g
String.length "aa/bb"
# 5
String.myers_difference("banana", "panama")
#[
#   del: "b",
#   ins: "p",
#   eq: "ana",
#   del: "n",
#   ins: "m",
#   eq: "a"
# ]

# pag 127/136

String.pad_leading("cat", 5, ">")
# ">>cat"
String.pad_trailing("cat", 5)
# "cat   "
String.printable? "um nome"
# true
String.printable? "um \x00 nome"
# false
String.replace "the cat on the mat", "at", "AT"
# "the cAT on the mAT"
String.replace "the cat on the mat", "at", "AT", global: false
# "the cAT on the mat"
String.replace "the cat on the mat", "at", "AT", insert_replaced: 2
# "the cATat on the mATat"
String.reverse "teste"
# etset
String.slice "the cat on the.." , 4, 3
# "cat"
String.slice "the cat on the.." , -3, 3
# "e.."
String.split " the cat on the mat  "
# ["the", "cat", "on", "the", "mat"]
String.split "the cat on the mat","t"
# ["", "he ca", " on ", "he ma", ""]
String.split "the cat on the mat", ~r{[ae]}
# ["th", " c", "t on th", " m", "t"]
String.split "the cat on the mat", ~r{[ae]}, parts: 2
# ["th", " cat on the mat"]
String.starts_with? "String", ["elix", "stri", "ring"]
# false
String.trim "\t Hello \r\n "
# "Hello"
String.trim "!!!SALE!!!", "!"
# "SALE"
String.trim_leading "\t\f Hello\t\n"
# "Hello\t\n"
String.trim_leading "!!!SALE!!!","!"
# "SALE!!!"
String.trim_trailing(" line \r\n")
# " line"
String.upcase "Um nome"
# "UM NOME"
String.valid? "a"
# true
String.valid? <<0x80, 0x81>>
# false
