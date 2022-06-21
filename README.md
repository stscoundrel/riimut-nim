# Riimut

Transform latin letters to runes & vice versa. Nim version.

Includes transformers for four main runic alphabets:

- Elder Futhark
- Younger Futhark
- Medieval Futhork
- Futhorc (Anglo-Frisian runes)

## Install

`nimble install https://github.com/stscoundrel/riimut-nim`

## Usage

Text to runes:
```nim
# Ships four runic dialects under riimut module.
import riimut

# From Old Groms runestone.
const content = "auk tani karþi kristna"
let youngerFuthark = riimut.youngerfuthark.lettersToRunes(content)
echo youngerFuthark) # ᛅᚢᚴ:ᛏᛅᚾᛁ:ᚴᛅᚱᚦᛁ:ᚴᚱᛁᛋᛏᚾᛅ

# From 4th century axe in Jutland
const content = "wagagastiz alu wihgu sikijaz aiþalataz"
let elderFuthark = riimut.elderfuthark.lettersToRunes(content)
echo elderFuthark # ᚹᚨᚷᚨᚷᚨᛋᛏᛁᛉ:ᚨᛚᚢ:ᚹᛁᚻᚷᚢ:ᛋᛁᚲᛁᛃᚨᛉ:ᚨᛁᚦᚨᛚᚨᛏᚨᛉ

# From Lord's Prayer, in Old Norse.
const content = "Faðer uor som ast i himlüm, halgað warðe þit nama"
let medievalFuthork = riimut.medievalfuthork.LettersToRunes(content)
echo medievalFuthork # ᚠᛆᚦᚽᚱ:ᚢᚮᚱ:ᛋᚮᛘ:ᛆᛋᛏ:ᛁ:ᚼᛁᛘᛚᚢᛘ,:ᚼᛆᛚᚵᛆᚦ:ᚠᛆᚱᚦᚽ:ᚦᛁᛏ:ᚿᛆᛘᛆ

# From 8th century Franks Casket, in late West Saxon.
const content = "fisc.flodu.ahofonferg | enberig |"
let futhorc = riimut.futhorc.LettersToRunes(content)
echo futhorc # ᚠᛁᛋᚳ.ᚠᛚᚩᛞᚢ.ᚪᚻᚩᚠᚩᚾᚠᛖᚱᚷ:|:ᛖᚾᛒᛖᚱᛁᚷ:|
```

Runes to text:
```nim

# All four dialects contain runesToLetters method.
import riimut

const runicText = "ᛅᚢᚴ:ᛏᛅᚾᛁ:ᚴᛅᚱᚦᛁ:ᚴᚱᛁᛋᛏᚾᛅ"
let latinText = riimut.youngerfuthark.runesToLetters(runicText)

echo latinText # "auk tani karþi kristna"

```

Rune variants in Younger Futhark:

Younger Futhark comes with long branch (Danish) and short twig (Norwegian & Swedish) variants.
```nim
import riimut

const letters = "aábcdðeéfghiíjklmnoópqrstþuúvwxyýzåäæöøǫþ";

# Comes with named functions per style.
let longBranch = youngerfuthark.lettersToLongBranchRunes(letters);
let shortTwig = youngerfuthark.lettersToShortTwigRunes(letters);

echo longBranch; # ᛅᛅᛒᛋᛏᚦᛁᛁᚠᚴᚼᛁᛁᛁᚴᛚᛘᚾᚢᚢᛒᚴᚱᛋᛏᚦᚢᚢᚢᚢᛋᚢᚢᛋᚢᛅᛅᚢᚢᚢᚦ
echo shortTwig;  # ᛆᛆᛒᛌᛐᚦᛁᛁᚠᚴᚽᛁᛁᛁᚴᛚᛘᚿᚢᚢᛒᚴᚱᛌᛐᚦᚢᚢᚢᚢᛌᚢᚢᛌᚢᛆᛆᚢᚢᚢᚦ

# Default function can also be called with variant enum to define the runeset.
let longBranchResult = youngerfuthark.lettersToRunes(letters, youngerfuthark.RuneVariant.longBranch)
let shortTwigResult = youngerfuthark.lettersToRunes(letters, youngerfuthark.RuneVariant.shortTwig)

```


#### What's in the name?

"Riimut" is the Finnish word for "runes".
