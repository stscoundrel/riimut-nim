import unittest

import riimut

test "Parses to Younger Futhark":
  # From Old Groms runestone.
  const content = "auk tani karþi kristna"
  const expected = "ᛅᚢᚴ:ᛏᛅᚾᛁ:ᚴᛅᚱᚦᛁ:ᚴᚱᛁᛋᛏᚾᛅ"
  let result = riimut.youngerfuthark.lettersToRunes(content)
  check result == expected

test "Parses Younger Futhark to text":
  # From Old Groms runestone.
  const content = "ᛅᚢᚴ:ᛏᛅᚾᛁ:ᚴᛅᚱᚦᛁ:ᚴᚱᛁᛋᛏᚾᛅ"
  const expected = "auk tani karþi kristna"
  let result = riimut.youngerfuthark.runesToLetters(content)
  check result == expected

test "Parses to Elder Futhark":
  # From 4th century axe in Jutland
  const content = "wagagastiz alu wihgu sikijaz aiþalataz"
  const expected = "ᚹᚨᚷᚨᚷᚨᛋᛏᛁᛉ:ᚨᛚᚢ:ᚹᛁᚻᚷᚢ:ᛋᛁᚲᛁᛃᚨᛉ:ᚨᛁᚦᚨᛚᚨᛏᚨᛉ"
  let result = riimut.elderfuthark.lettersToRunes(content)
  check result == expected

test "Parses Elder Futhark to text":
  # From 4th century axe in Jutland
  const content = "ᚹᚨᚷᚨᚷᚨᛋᛏᛁᛉ:ᚨᛚᚢ:ᚹᛁᚻᚷᚢ:ᛋᛁᚲᛁᛃᚨᛉ:ᚨᛁᚦᚨᛚᚨᛏᚨᛉ"
  const expected = "wagagastiz alu wihgu sikijaz aiþalataz"
  let result = riimut.elderfuthark.runesToLetters(content)
  check result == expected

test "Parses to Medieval Futhork":
  # From Lord's Prayer, in Old Norse.
  const content = "Faðer uor som ast i himlüm, halgað warðe þit nama"
  const expected = "ᚠᛆᚦᚽᚱ:ᚢᚮᚱ:ᛋᚮᛘ:ᛆᛋᛏ:ᛁ:ᚼᛁᛘᛚᚢᛘ,:ᚼᛆᛚᚵᛆᚦ:ᚠᛆᚱᚦᚽ:ᚦᛁᛏ:ᚿᛆᛘᛆ"
  let result = riimut.medievalfuthork.lettersToRunes(content)
  check result == expected

test "Parses Medieval Futhork to text":
  # From Lord's Prayer, in Old Norse.
  const content = "ᚠᛆᚦᚽᚱ:ᚢᚮᚱ:ᛋᚮᛘ:ᛆᛋᛏ:ᛁ:ᚼᛁᛘᛚᚢᛘ:ᚼᛆᛚᚵᛆᚦ:ᚠᛆᚱᚦᚽ:ᚦᛁᛏ:ᚿᛆᛘᛆ"
  const expected = "faþer uor som ast i himlum halgaþ farþe þit nama" # Wont tell apart eth & thorn in mid sentence.
  let result = riimut.medievalfuthork.runesToLetters(content)
  check result == expected

test "Parses to Futhorc":
  # From 8th century Franks Casket, in late West Saxon.
  const content = "fisc.flodu.ahofonferg | enberig |"
  const expected = "ᚠᛁᛋᚳ.ᚠᛚᚩᛞᚢ.ᚪᚻᚩᚠᚩᚾᚠᛖᚱᚷ:|:ᛖᚾᛒᛖᚱᛁᚷ:|"
  let result = riimut.futhorc.lettersToRunes(content)
  check result == expected

test "Parses Futhorc to text":
  # From 8th century Franks Casket, in late West Saxon.
  const content = "ᚠᛁᛋᚳ.ᚠᛚᚩᛞᚢ.ᚪᚻᚩᚠᚩᚾᚠᛖᚱᚷ:|:ᛖᚾᛒᛖᚱᛁᚷ:|"
  const expected = "fisc.flodu.ahofonferg | enberig |"
  let result = riimut.futhorc.runesToLetters(content)
  check result == expected