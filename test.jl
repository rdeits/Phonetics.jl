using phonics

function assert(v1, v2)
  prefix = "fail"
  if v1 == v2
    prefix = "pass"
  end
  println("$prefix: ", v1, ',', v2)
end

#Tests for correctness of Soundex
#println("\nSoundex")
assert(soundex("Euler"),"e460")
assert(soundex("Ellery"),"e460")
assert(soundex("Gauss"),"g200")
assert(soundex("Ghosh"),"g200")
assert(soundex("Hilbert"), "h416")
assert(soundex("Heilbronn"), "h416")
assert(soundex("Kant"), "k530")
assert(soundex("Knuth"), "k530")
assert(soundex("Ladd"),"l300")
assert(soundex("Lloyd"),"l300")
assert(soundex("Christina"), "c623")
assert(soundex("Kristina"), "k623")

#Tests for correctness of Metaphone
println("\nMetaphone")
assert(metaphone("School"), "skl")
assert(metaphone("Shubert"), "xbrt")
assert(metaphone("Bonner"), "bnr")
assert(metaphone("Baymore"), "bmr")
assert(metaphone("Smith"), "smø")
assert(metaphone("Saneed"), "snt")
assert(metaphone("Aardvark"), "artf")
assert(metaphone("persuade"), "prst")
assert(metaphone("pressed"), "prst")
#NB: reference seemed confused about these two examples. 
assert(metaphone("Van Hoesen"), "fnhs")
assert(metaphone("Vincenzo"), "fnsn")

#Tests for correctness of Phonex
#println("\nPhonex")
assert(phonex("Peter"), "b360")
assert(phonex("Pete"), "b300")
assert(phonex("Pedro"), "b360")
assert(phonex("Stephen"), "s315")
assert(phonex("Steve"), "s310")
assert(phonex("Smythe"), "s530")
assert(phonex("Smith"), "s530")
assert(phonex("Gail"), "g400")
assert(phonex("Gayle"), "g400")
assert(phonex("Christina"), "c623")
assert(phonex("Kristina"), "c623")

#Test for correctnes of Phonix
#println("\nPhonix")
assert(phonix("Peter"), "p300")
assert(phonix("Pete"), "p300")
assert(phonix("Pedro"), "p360")
assert(phonix("Stephen"), "s375")
assert(phonix("Steve"), "s370")
assert(phonix("Smith"), "s530")
assert(phonix("Smythe"), "s530")
assert(phonix("Gail"), "g400")
assert(phonix("Gayle"), "g400")
assert(phonix("Christina"), "k683")
assert(phonix("Kristina"), "k683")

#Test for correctness of NYSIIS
println("\nNYSIIS")
assert(nysiis("Peter"), "patar")
assert(nysiis("Pete"), "pat")
assert(nysiis("Pedro"), "padr")
assert(nysiis("Stephen"), "stafan")
assert(nysiis("Steve"), "staf")
assert(nysiis("Smith"), "snat")
assert(nysiis("Smythe"), "snyt")
assert(nysiis("Gail"), "gal")
assert(nysiis("Gayle"), "gayl")
assert(nysiis("Christina"), "chrast")
assert(nysiis("Kristina"), "crasta")
assert(nysiis("Lawson"), "lasan")
assert(nysiis("Greene"), "gran")
assert(nysiis("Lynch"), "lync")
assert(nysiis("Wheeler"), "whalar")
assert(nysiis("Mitchell"), "matcal")
assert(nysiis("Anderson"), "andars")
assert(nysiis("Truman"), "tranan")
assert(nysiis("Jellyfish"), "jalyf")

#Test for correctness of Double-Metaphone
println("\nDouble-Metaphone")
assert(double_metaphone("Peter"),"ptr")
assert(double_metaphone("Pete"), "pt")
assert(double_metaphone("Pedro"), "ptr")
assert(double_metaphone("Stephen"), "stfn")
assert(double_metaphone("Steve"), "stf")
assert(double_metaphone("Smith"), ["smø","xmt"])
assert(double_metaphone("Smythe"), ["smø","xmt"])
assert(double_metaphone("Gail"), "kl")
assert(double_metaphone("Gayle"), "kl")
assert(double_metaphone("Christina"), "krstn")
assert(double_metaphone("Kristina"), "krstn")

#Test for correctness of MRA
println("\nMatch Rating Approach")
assert(match_rating_encode("Smith"), "smth")
assert(match_rating_encode("Smythe"), "smyth")
assert(match_rating_encode("Christina"), "chrstn")
assert(match_rating_encode("Kristina"), "krstn")
assert(match_rating_encode("Catherine"), "cthrn")
assert(match_rating_encode("Kathryn"), "kthryn")
assert(match_rating_encode("Byrne"), "byrn")
assert(match_rating_encode("Boern"), "brn")

assert(match_rating("Byrne", "Boern"), 5)
assert(meets_match_rating("Byrne", "Boern"), true)
assert(match_rating("Smith", "Smythe"), 5)
assert(meets_match_rating("Smith", "Smythe"), true)
assert(match_rating("Catherine", "Kathryn"), 4)
assert(meets_match_rating("Catherine", "Kathryn"), true)

#Test for correctness of Fuzzy Soundex
println("\nFuzzy Soundex")
assert(fuzzy_soundex("Kristen"),"k6935")
assert(fuzzy_soundex("Krissy"),"k6900")
assert(fuzzy_soundex("Christen"),"k6935")


