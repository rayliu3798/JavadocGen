module java where

open import lib

open import java-types public
----------------------------------------------------------------------------------
-- Run-rewriting rules
----------------------------------------------------------------------------------

data gratr2-nt : Set where
  _ws-plus-13 : gratr2-nt
  _ws : gratr2-nt
  _word-range-1 : gratr2-nt
  _word-plus-2 : gratr2-nt
  _word : gratr2-nt
  _type : gratr2-nt
  _strt : gratr2-nt
  _status : gratr2-nt
  _sp : gratr2-nt
  _sep-bar-7 : gratr2-nt
  _sep-bar-6 : gratr2-nt
  _sep-bar-5 : gratr2-nt
  _sep : gratr2-nt
  _sentence : gratr2-nt
  _posinfo : gratr2-nt
  _phrase-plus-10 : gratr2-nt
  _phrase-bar-9 : gratr2-nt
  _phrase-bar-8 : gratr2-nt
  _phrase : gratr2-nt
  _parameter : gratr2-nt
  _package : gratr2-nt
  _ows-star-14 : gratr2-nt
  _ows : gratr2-nt
  _num-range-3 : gratr2-nt
  _num-plus-4 : gratr2-nt
  _num : gratr2-nt
  _methods : gratr2-nt
  _methodName : gratr2-nt
  _method : gratr2-nt
  _imports : gratr2-nt
  _imp : gratr2-nt
  _encap : gratr2-nt
  _detail : gratr2-nt
  _descriptions : gratr2-nt
  _description : gratr2-nt
  _construct : gratr2-nt
  _comment : gratr2-nt
  _className : gratr2-nt
  _class : gratr2-nt
  _aws-bar-12 : gratr2-nt
  _aws-bar-11 : gratr2-nt
  _aws : gratr2-nt
  _abstra : gratr2-nt


gratr2-nt-eq : gratr2-nt → gratr2-nt → 𝔹
gratr2-nt-eq  _ws-plus-13 _ws-plus-13 = tt
gratr2-nt-eq  _ws _ws = tt
gratr2-nt-eq  _word-range-1 _word-range-1 = tt
gratr2-nt-eq  _word-plus-2 _word-plus-2 = tt
gratr2-nt-eq  _word _word = tt
gratr2-nt-eq  _type _type = tt
gratr2-nt-eq  _strt _strt = tt
gratr2-nt-eq  _status _status = tt
gratr2-nt-eq  _sp _sp = tt
gratr2-nt-eq  _sep-bar-7 _sep-bar-7 = tt
gratr2-nt-eq  _sep-bar-6 _sep-bar-6 = tt
gratr2-nt-eq  _sep-bar-5 _sep-bar-5 = tt
gratr2-nt-eq  _sep _sep = tt
gratr2-nt-eq  _sentence _sentence = tt
gratr2-nt-eq  _posinfo _posinfo = tt
gratr2-nt-eq  _phrase-plus-10 _phrase-plus-10 = tt
gratr2-nt-eq  _phrase-bar-9 _phrase-bar-9 = tt
gratr2-nt-eq  _phrase-bar-8 _phrase-bar-8 = tt
gratr2-nt-eq  _phrase _phrase = tt
gratr2-nt-eq  _parameter _parameter = tt
gratr2-nt-eq  _package _package = tt
gratr2-nt-eq  _ows-star-14 _ows-star-14 = tt
gratr2-nt-eq  _ows _ows = tt
gratr2-nt-eq  _num-range-3 _num-range-3 = tt
gratr2-nt-eq  _num-plus-4 _num-plus-4 = tt
gratr2-nt-eq  _num _num = tt
gratr2-nt-eq  _methods _methods = tt
gratr2-nt-eq  _methodName _methodName = tt
gratr2-nt-eq  _method _method = tt
gratr2-nt-eq  _imports _imports = tt
gratr2-nt-eq  _imp _imp = tt
gratr2-nt-eq  _encap _encap = tt
gratr2-nt-eq  _detail _detail = tt
gratr2-nt-eq  _descriptions _descriptions = tt
gratr2-nt-eq  _description _description = tt
gratr2-nt-eq  _construct _construct = tt
gratr2-nt-eq  _comment _comment = tt
gratr2-nt-eq  _className _className = tt
gratr2-nt-eq  _class _class = tt
gratr2-nt-eq  _aws-bar-12 _aws-bar-12 = tt
gratr2-nt-eq  _aws-bar-11 _aws-bar-11 = tt
gratr2-nt-eq  _aws _aws = tt
gratr2-nt-eq  _abstra _abstra = tt
gratr2-nt-eq _ _ = ff


open import rtn gratr2-nt


java-start : gratr2-nt → 𝕃 gratr2-rule
java-start _ws-plus-13 = (just "P91" , nothing , just _ws-plus-13 , inj₁ _aws :: inj₁ _ws-plus-13 :: []) :: (just "P90" , nothing , just _ws-plus-13 , inj₁ _aws :: []) :: []
java-start _ws = (just "P92" , nothing , just _ws , inj₁ _ws-plus-13 :: []) :: []
java-start _word-range-1 = (just "P9" , nothing , just _word-range-1 , inj₂ 'J' :: []) :: (just "P8" , nothing , just _word-range-1 , inj₂ 'I' :: []) :: (just "P7" , nothing , just _word-range-1 , inj₂ 'H' :: []) :: (just "P6" , nothing , just _word-range-1 , inj₂ 'G' :: []) :: (just "P51" , nothing , just _word-range-1 , inj₂ 'z' :: []) :: (just "P50" , nothing , just _word-range-1 , inj₂ 'y' :: []) :: (just "P5" , nothing , just _word-range-1 , inj₂ 'F' :: []) :: (just "P49" , nothing , just _word-range-1 , inj₂ 'x' :: []) :: (just "P48" , nothing , just _word-range-1 , inj₂ 'w' :: []) :: (just "P47" , nothing , just _word-range-1 , inj₂ 'v' :: []) :: (just "P46" , nothing , just _word-range-1 , inj₂ 'u' :: []) :: (just "P45" , nothing , just _word-range-1 , inj₂ 't' :: []) :: (just "P44" , nothing , just _word-range-1 , inj₂ 's' :: []) :: (just "P43" , nothing , just _word-range-1 , inj₂ 'r' :: []) :: (just "P42" , nothing , just _word-range-1 , inj₂ 'q' :: []) :: (just "P41" , nothing , just _word-range-1 , inj₂ 'p' :: []) :: (just "P40" , nothing , just _word-range-1 , inj₂ 'o' :: []) :: (just "P4" , nothing , just _word-range-1 , inj₂ 'E' :: []) :: (just "P39" , nothing , just _word-range-1 , inj₂ 'n' :: []) :: (just "P38" , nothing , just _word-range-1 , inj₂ 'm' :: []) :: (just "P37" , nothing , just _word-range-1 , inj₂ 'l' :: []) :: (just "P36" , nothing , just _word-range-1 , inj₂ 'k' :: []) :: (just "P35" , nothing , just _word-range-1 , inj₂ 'j' :: []) :: (just "P34" , nothing , just _word-range-1 , inj₂ 'i' :: []) :: (just "P33" , nothing , just _word-range-1 , inj₂ 'h' :: []) :: (just "P32" , nothing , just _word-range-1 , inj₂ 'g' :: []) :: (just "P31" , nothing , just _word-range-1 , inj₂ 'f' :: []) :: (just "P30" , nothing , just _word-range-1 , inj₂ 'e' :: []) :: (just "P3" , nothing , just _word-range-1 , inj₂ 'D' :: []) :: (just "P29" , nothing , just _word-range-1 , inj₂ 'd' :: []) :: (just "P28" , nothing , just _word-range-1 , inj₂ 'c' :: []) :: (just "P27" , nothing , just _word-range-1 , inj₂ 'b' :: []) :: (just "P26" , nothing , just _word-range-1 , inj₂ 'a' :: []) :: (just "P25" , nothing , just _word-range-1 , inj₂ 'Z' :: []) :: (just "P24" , nothing , just _word-range-1 , inj₂ 'Y' :: []) :: (just "P23" , nothing , just _word-range-1 , inj₂ 'X' :: []) :: (just "P22" , nothing , just _word-range-1 , inj₂ 'W' :: []) :: (just "P21" , nothing , just _word-range-1 , inj₂ 'V' :: []) :: (just "P20" , nothing , just _word-range-1 , inj₂ 'U' :: []) :: (just "P2" , nothing , just _word-range-1 , inj₂ 'C' :: []) :: (just "P19" , nothing , just _word-range-1 , inj₂ 'T' :: []) :: (just "P18" , nothing , just _word-range-1 , inj₂ 'S' :: []) :: (just "P17" , nothing , just _word-range-1 , inj₂ 'R' :: []) :: (just "P16" , nothing , just _word-range-1 , inj₂ 'Q' :: []) :: (just "P15" , nothing , just _word-range-1 , inj₂ 'P' :: []) :: (just "P14" , nothing , just _word-range-1 , inj₂ 'O' :: []) :: (just "P13" , nothing , just _word-range-1 , inj₂ 'N' :: []) :: (just "P12" , nothing , just _word-range-1 , inj₂ 'M' :: []) :: (just "P11" , nothing , just _word-range-1 , inj₂ 'L' :: []) :: (just "P10" , nothing , just _word-range-1 , inj₂ 'K' :: []) :: (just "P1" , nothing , just _word-range-1 , inj₂ 'B' :: []) :: (just "P0" , nothing , just _word-range-1 , inj₂ 'A' :: []) :: []
java-start _word-plus-2 = (just "P53" , nothing , just _word-plus-2 , inj₁ _word-range-1 :: inj₁ _word-plus-2 :: []) :: (just "P52" , nothing , just _word-plus-2 , inj₁ _word-range-1 :: []) :: []
java-start _word = (just "P54" , nothing , just _word , inj₁ _word-plus-2 :: []) :: []
java-start _type = (just "VoidType" , nothing , just _type , inj₂ 'v' :: inj₂ 'o' :: inj₂ 'i' :: inj₂ 'd' :: []) :: (just "ReturnType" , nothing , just _type , inj₁ _word :: []) :: []
java-start _strt = (just "Strt" , nothing , just _strt , inj₁ _ows :: inj₁ _package :: inj₁ _ows :: inj₁ _imports :: inj₁ _class :: inj₁ _ows :: []) :: []
java-start _status = (just "Static" , nothing , just _status , inj₂ 's' :: inj₂ 't' :: inj₂ 'a' :: inj₂ 't' :: inj₂ 'i' :: inj₂ 'c' :: []) :: (just "NoStatus" , nothing , just _status , []) :: (just "Final" , nothing , just _status , inj₂ 'f' :: inj₂ 'i' :: inj₂ 'n' :: inj₂ 'a' :: inj₂ 'l' :: []) :: []
java-start _sp = (just "P84" , nothing , just _sp , inj₂ ' ' :: []) :: []
java-start _sep-bar-7 = (just "P73" , nothing , just _sep-bar-7 , inj₁ _sep-bar-6 :: []) :: (just "P72" , nothing , just _sep-bar-7 , inj₂ ',' :: []) :: []
java-start _sep-bar-6 = (just "P71" , nothing , just _sep-bar-6 , inj₁ _sep-bar-5 :: []) :: (just "P70" , nothing , just _sep-bar-6 , inj₂ '.' :: []) :: []
java-start _sep-bar-5 = (just "P69" , nothing , just _sep-bar-5 , inj₂ '!' :: []) :: (just "P68" , nothing , just _sep-bar-5 , inj₂ '?' :: []) :: []
java-start _sep = (just "P74" , nothing , just _sep , inj₁ _sep-bar-7 :: []) :: []
java-start _sentence = (just "P83" , nothing , just _sentence , inj₁ _phrase :: []) :: (just "P82" , nothing , just _sentence , inj₁ _phrase :: inj₁ _sp :: inj₁ _sentence :: []) :: []
java-start _posinfo = (just "Posinfo" , nothing , just _posinfo , []) :: []
java-start _phrase-plus-10 = (just "P80" , nothing , just _phrase-plus-10 , inj₁ _phrase-bar-9 :: inj₁ _phrase-plus-10 :: []) :: (just "P79" , nothing , just _phrase-plus-10 , inj₁ _phrase-bar-9 :: []) :: []
java-start _phrase-bar-9 = (just "P78" , nothing , just _phrase-bar-9 , inj₁ _phrase-bar-8 :: []) :: (just "P77" , nothing , just _phrase-bar-9 , inj₁ _word :: []) :: []
java-start _phrase-bar-8 = (just "P76" , nothing , just _phrase-bar-8 , inj₁ _sep :: []) :: (just "P75" , nothing , just _phrase-bar-8 , inj₁ _num :: []) :: []
java-start _phrase = (just "P81" , nothing , just _phrase , inj₁ _phrase-plus-10 :: []) :: []
java-start _parameter = (just "Parameter" , nothing , just _parameter , inj₁ _type :: inj₁ _ows :: inj₁ _word :: []) :: (just "NoParameter" , nothing , just _parameter , []) :: []
java-start _package = (just "PackageNil" , nothing , just _package , []) :: (just "Package" , nothing , just _package , inj₂ 'p' :: inj₂ 'a' :: inj₂ 'c' :: inj₂ 'k' :: inj₂ 'a' :: inj₂ 'g' :: inj₂ 'e' :: inj₂ ' ' :: inj₁ _word :: inj₂ ';' :: []) :: []
java-start _ows-star-14 = (just "P94" , nothing , just _ows-star-14 , inj₁ _aws :: inj₁ _ows-star-14 :: []) :: (just "P93" , nothing , just _ows-star-14 , []) :: []
java-start _ows = (just "P95" , nothing , just _ows , inj₁ _ows-star-14 :: []) :: []
java-start _num-range-3 = (just "P64" , nothing , just _num-range-3 , inj₂ '9' :: []) :: (just "P63" , nothing , just _num-range-3 , inj₂ '8' :: []) :: (just "P62" , nothing , just _num-range-3 , inj₂ '7' :: []) :: (just "P61" , nothing , just _num-range-3 , inj₂ '6' :: []) :: (just "P60" , nothing , just _num-range-3 , inj₂ '5' :: []) :: (just "P59" , nothing , just _num-range-3 , inj₂ '4' :: []) :: (just "P58" , nothing , just _num-range-3 , inj₂ '3' :: []) :: (just "P57" , nothing , just _num-range-3 , inj₂ '2' :: []) :: (just "P56" , nothing , just _num-range-3 , inj₂ '1' :: []) :: (just "P55" , nothing , just _num-range-3 , inj₂ '0' :: []) :: []
java-start _num-plus-4 = (just "P66" , nothing , just _num-plus-4 , inj₁ _num-range-3 :: inj₁ _num-plus-4 :: []) :: (just "P65" , nothing , just _num-plus-4 , inj₁ _num-range-3 :: []) :: []
java-start _num = (just "P67" , nothing , just _num , inj₁ _num-plus-4 :: []) :: []
java-start _methods = (just "Methods" , nothing , just _methods , inj₁ _ows :: inj₁ _method :: inj₁ _methods :: []) :: (just "MethodNil" , nothing , just _methods , []) :: []
java-start _methodName = (just "MethodName" , nothing , just _methodName , inj₁ _word :: []) :: []
java-start _method = (just "Method" , nothing , just _method , inj₁ _comment :: inj₁ _abstra :: inj₁ _ows :: inj₁ _encap :: inj₁ _ows :: inj₁ _type :: inj₁ _ows :: inj₁ _methodName :: inj₁ _ows :: inj₂ '(' :: inj₁ _ows :: inj₁ _parameter :: inj₁ _ows :: inj₂ ')' :: inj₁ _ows :: inj₂ '{' :: inj₁ _ows :: inj₂ '}' :: []) :: []
java-start _imports = (just "ImportNil" , nothing , just _imports , []) :: (just "ImportCons" , nothing , just _imports , inj₁ _ows :: inj₁ _imp :: inj₁ _imports :: []) :: []
java-start _imp = (just "Imp" , nothing , just _imp , inj₂ 'i' :: inj₂ 'm' :: inj₂ 'p' :: inj₂ 'o' :: inj₂ 'r' :: inj₂ 't' :: inj₂ ' ' :: inj₁ _sentence :: inj₂ ';' :: []) :: []
java-start _encap = (just "Public" , nothing , just _encap , inj₂ 'p' :: inj₂ 'u' :: inj₂ 'b' :: inj₂ 'l' :: inj₂ 'i' :: inj₂ 'c' :: []) :: (just "Protected" , nothing , just _encap , inj₂ 'p' :: inj₂ 'r' :: inj₂ 'o' :: inj₂ 't' :: inj₂ 'e' :: inj₂ 'c' :: inj₂ 't' :: inj₂ 'e' :: inj₂ 'd' :: []) :: (just "Private" , nothing , just _encap , inj₂ 'p' :: inj₂ 'r' :: inj₂ 'i' :: inj₂ 'v' :: inj₂ 'a' :: inj₂ 't' :: inj₂ 'e' :: []) :: (just "NoEncap" , nothing , just _encap , []) :: []
java-start _detail = (just "DetailNil" , nothing , just _detail , []) :: (just "Detail" , nothing , just _detail , inj₂ ' ' :: inj₁ _sentence :: []) :: []
java-start _descriptions = (just "DescriNil" , nothing , just _descriptions , []) :: (just "DescrMulti" , nothing , just _descriptions , inj₁ _ows :: inj₁ _description :: inj₁ _descriptions :: []) :: []
java-start _description = (just "Version" , nothing , just _description , inj₁ _ows :: inj₂ '*' :: inj₂ ' ' :: inj₁ _ows :: inj₂ '@' :: inj₂ 'v' :: inj₂ 'e' :: inj₂ 'r' :: inj₂ 's' :: inj₂ 'i' :: inj₂ 'o' :: inj₂ 'n' :: inj₂ ' ' :: inj₁ _sentence :: []) :: (just "See" , nothing , just _description , inj₁ _ows :: inj₂ '*' :: inj₂ ' ' :: inj₁ _ows :: inj₂ '@' :: inj₂ 's' :: inj₂ 'e' :: inj₂ 'e' :: inj₂ ' ' :: inj₁ _type :: []) :: (just "Return" , nothing , just _description , inj₁ _ows :: inj₂ '*' :: inj₂ ' ' :: inj₁ _ows :: inj₂ '@' :: inj₂ 'r' :: inj₂ 'e' :: inj₂ 't' :: inj₂ 'u' :: inj₂ 'r' :: inj₂ 'n' :: inj₂ ' ' :: inj₁ _type :: inj₁ _detail :: []) :: (just "Param" , nothing , just _description , inj₁ _ows :: inj₂ '*' :: inj₂ ' ' :: inj₁ _ows :: inj₂ '@' :: inj₂ 'p' :: inj₂ 'a' :: inj₂ 'r' :: inj₂ 'a' :: inj₂ 'm' :: inj₂ ' ' :: inj₁ _type :: inj₁ _detail :: []) :: (just "Emptycom" , nothing , just _description , inj₁ _ows :: inj₂ '*' :: inj₁ _ows :: []) :: (just "DescrSingl" , nothing , just _description , inj₁ _ows :: inj₂ '*' :: inj₂ ' ' :: inj₁ _sentence :: []) :: (just "Author" , nothing , just _description , inj₁ _ows :: inj₂ '*' :: inj₂ ' ' :: inj₁ _ows :: inj₂ '@' :: inj₂ 'a' :: inj₂ 'u' :: inj₂ 't' :: inj₂ 'h' :: inj₂ 'o' :: inj₂ 'r' :: inj₂ ' ' :: inj₁ _sentence :: []) :: []
java-start _construct = (just "Constructor" , nothing , just _construct , inj₁ _comment :: inj₁ _encap :: inj₁ _ows :: inj₁ _className :: inj₁ _ows :: inj₂ '(' :: inj₁ _ows :: inj₁ _parameter :: inj₁ _ows :: inj₂ ')' :: inj₁ _ows :: inj₂ '{' :: inj₁ _ows :: inj₂ '}' :: []) :: (just "ConstructNil" , nothing , just _construct , []) :: []
java-start _comment = (just "Comment" , nothing , just _comment , inj₁ _ows :: inj₂ '/' :: inj₂ '*' :: inj₂ '*' :: inj₁ _detail :: inj₁ _ows :: inj₁ _descriptions :: inj₁ _ows :: inj₂ '*' :: inj₂ '/' :: inj₁ _ows :: []) :: []
java-start _className = (just "ClassName" , nothing , just _className , inj₁ _word :: []) :: []
java-start _class = (just "Class" , nothing , just _class , inj₁ _comment :: inj₁ _abstra :: inj₁ _ows :: inj₁ _encap :: inj₁ _ows :: inj₁ _status :: inj₁ _ows :: inj₂ 'c' :: inj₂ 'l' :: inj₂ 'a' :: inj₂ 's' :: inj₂ 's' :: inj₂ ' ' :: inj₁ _className :: inj₁ _ows :: inj₂ '{' :: inj₁ _ows :: inj₁ _construct :: inj₁ _ows :: inj₁ _methods :: inj₁ _ows :: inj₂ '}' :: []) :: []
java-start _aws-bar-12 = (just "P88" , nothing , just _aws-bar-12 , inj₁ _aws-bar-11 :: []) :: (just "P87" , nothing , just _aws-bar-12 , inj₂ ' ' :: []) :: []
java-start _aws-bar-11 = (just "P86" , nothing , just _aws-bar-11 , inj₂ '\n' :: []) :: (just "P85" , nothing , just _aws-bar-11 , inj₂ '\t' :: []) :: []
java-start _aws = (just "P89" , nothing , just _aws , inj₁ _aws-bar-12 :: []) :: []
java-start _abstra = (just "NoAbstract" , nothing , just _abstra , []) :: (just "Abstract" , nothing , just _abstra , inj₂ 'a' :: inj₂ 'b' :: inj₂ 's' :: inj₂ 't' :: inj₂ 'r' :: inj₂ 'a' :: inj₂ 'c' :: inj₂ 't' :: []) :: []


java-return : maybe gratr2-nt → 𝕃 gratr2-rule
java-return _ = []

java-rtn : gratr2-rtn
java-rtn = record { start = _strt ; _eq_ = gratr2-nt-eq ; gratr2-start = java-start ; gratr2-return = java-return }

open import run ptr
open noderiv

------------------------------------------
-- Length-decreasing rules
------------------------------------------

len-dec-rewrite : Run → maybe (Run × ℕ)
len-dec-rewrite {- Abstract-} ((Id "Abstract") :: (InputChar 'a') :: (InputChar 'b') :: (InputChar 's') :: (InputChar 't') :: (InputChar 'r') :: (InputChar 'a') :: (InputChar 'c') :: _::_(InputChar 't') rest) = just (ParseTree (parsed-abstra (norm-abstra Abstract)) ::' rest , 9)
len-dec-rewrite {- Author-} ((Id "Author") :: (ParseTree parsed-ows) :: (InputChar '*') :: (InputChar ' ') :: (ParseTree parsed-ows) :: (InputChar '@') :: (InputChar 'a') :: (InputChar 'u') :: (InputChar 't') :: (InputChar 'h') :: (InputChar 'o') :: (InputChar 'r') :: (InputChar ' ') :: _::_(ParseTree (parsed-sentence x0)) rest) = just (ParseTree (parsed-description (norm-description (Author x0))) ::' rest , 14)
len-dec-rewrite {- Class-} ((Id "Class") :: (ParseTree (parsed-comment x0)) :: (ParseTree (parsed-abstra x1)) :: (ParseTree parsed-ows) :: (ParseTree (parsed-encap x2)) :: (ParseTree parsed-ows) :: (ParseTree (parsed-status x3)) :: (ParseTree parsed-ows) :: (InputChar 'c') :: (InputChar 'l') :: (InputChar 'a') :: (InputChar 's') :: (InputChar 's') :: (InputChar ' ') :: (ParseTree (parsed-className x4)) :: (ParseTree parsed-ows) :: (InputChar '{') :: (ParseTree parsed-ows) :: (ParseTree (parsed-construct x5)) :: (ParseTree parsed-ows) :: (ParseTree (parsed-methods x6)) :: (ParseTree parsed-ows) :: _::_(InputChar '}') rest) = just (ParseTree (parsed-class (norm-class (Class x0 x1 x2 x3 x4 x5 x6))) ::' rest , 23)
len-dec-rewrite {- ClassName-} ((Id "ClassName") :: _::_(ParseTree (parsed-word x0)) rest) = just (ParseTree (parsed-className (norm-className (ClassName x0))) ::' rest , 2)
len-dec-rewrite {- Comment-} ((Id "Comment") :: (ParseTree parsed-ows) :: (InputChar '/') :: (InputChar '*') :: (InputChar '*') :: (ParseTree (parsed-detail x0)) :: (ParseTree parsed-ows) :: (ParseTree (parsed-descriptions x1)) :: (ParseTree parsed-ows) :: (InputChar '*') :: (InputChar '/') :: _::_(ParseTree parsed-ows) rest) = just (ParseTree (parsed-comment (norm-comment (Comment x0 x1))) ::' rest , 12)
len-dec-rewrite {- Constructor-} ((Id "Constructor") :: (ParseTree (parsed-comment x0)) :: (ParseTree (parsed-encap x1)) :: (ParseTree parsed-ows) :: (ParseTree (parsed-className x2)) :: (ParseTree parsed-ows) :: (InputChar '(') :: (ParseTree parsed-ows) :: (ParseTree (parsed-parameter x3)) :: (ParseTree parsed-ows) :: (InputChar ')') :: (ParseTree parsed-ows) :: (InputChar '{') :: (ParseTree parsed-ows) :: _::_(InputChar '}') rest) = just (ParseTree (parsed-construct (norm-construct (Constructor x0 x1 x2 x3))) ::' rest , 15)
len-dec-rewrite {- DescrMulti-} ((Id "DescrMulti") :: (ParseTree parsed-ows) :: (ParseTree (parsed-description x0)) :: _::_(ParseTree (parsed-descriptions x1)) rest) = just (ParseTree (parsed-descriptions (norm-descriptions (DescrMulti x0 x1))) ::' rest , 4)
len-dec-rewrite {- DescrSingl-} ((Id "DescrSingl") :: (ParseTree parsed-ows) :: (InputChar '*') :: (InputChar ' ') :: _::_(ParseTree (parsed-sentence x0)) rest) = just (ParseTree (parsed-description (norm-description (DescrSingl x0))) ::' rest , 5)
len-dec-rewrite {- Detail-} ((Id "Detail") :: (InputChar ' ') :: _::_(ParseTree (parsed-sentence x0)) rest) = just (ParseTree (parsed-detail (norm-detail (Detail x0))) ::' rest , 3)
len-dec-rewrite {- Emptycom-} ((Id "Emptycom") :: (ParseTree parsed-ows) :: (InputChar '*') :: _::_(ParseTree parsed-ows) rest) = just (ParseTree (parsed-description (norm-description Emptycom)) ::' rest , 4)
len-dec-rewrite {- Final-} ((Id "Final") :: (InputChar 'f') :: (InputChar 'i') :: (InputChar 'n') :: (InputChar 'a') :: _::_(InputChar 'l') rest) = just (ParseTree (parsed-status (norm-status Final)) ::' rest , 6)
len-dec-rewrite {- Imp-} ((Id "Imp") :: (InputChar 'i') :: (InputChar 'm') :: (InputChar 'p') :: (InputChar 'o') :: (InputChar 'r') :: (InputChar 't') :: (InputChar ' ') :: (ParseTree (parsed-sentence x0)) :: _::_(InputChar ';') rest) = just (ParseTree (parsed-imp (norm-imp (Imp x0))) ::' rest , 10)
len-dec-rewrite {- ImportCons-} ((Id "ImportCons") :: (ParseTree parsed-ows) :: (ParseTree (parsed-imp x0)) :: _::_(ParseTree (parsed-imports x1)) rest) = just (ParseTree (parsed-imports (norm-imports (ImportCons x0 x1))) ::' rest , 4)
len-dec-rewrite {- Method-} ((Id "Method") :: (ParseTree (parsed-comment x0)) :: (ParseTree (parsed-abstra x1)) :: (ParseTree parsed-ows) :: (ParseTree (parsed-encap x2)) :: (ParseTree parsed-ows) :: (ParseTree (parsed-type x3)) :: (ParseTree parsed-ows) :: (ParseTree (parsed-methodName x4)) :: (ParseTree parsed-ows) :: (InputChar '(') :: (ParseTree parsed-ows) :: (ParseTree (parsed-parameter x5)) :: (ParseTree parsed-ows) :: (InputChar ')') :: (ParseTree parsed-ows) :: (InputChar '{') :: (ParseTree parsed-ows) :: _::_(InputChar '}') rest) = just (ParseTree (parsed-method (norm-method (Method x0 x1 x2 x3 x4 x5))) ::' rest , 19)
len-dec-rewrite {- MethodName-} ((Id "MethodName") :: _::_(ParseTree (parsed-word x0)) rest) = just (ParseTree (parsed-methodName (norm-methodName (MethodName x0))) ::' rest , 2)
len-dec-rewrite {- Methods-} ((Id "Methods") :: (ParseTree parsed-ows) :: (ParseTree (parsed-method x0)) :: _::_(ParseTree (parsed-methods x1)) rest) = just (ParseTree (parsed-methods (norm-methods (Methods x0 x1))) ::' rest , 4)
len-dec-rewrite {- P0-} ((Id "P0") :: _::_(InputChar 'A') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'A'))) ::' rest , 2)
len-dec-rewrite {- P1-} ((Id "P1") :: _::_(InputChar 'B') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'B'))) ::' rest , 2)
len-dec-rewrite {- P10-} ((Id "P10") :: _::_(InputChar 'K') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'K'))) ::' rest , 2)
len-dec-rewrite {- P11-} ((Id "P11") :: _::_(InputChar 'L') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'L'))) ::' rest , 2)
len-dec-rewrite {- P12-} ((Id "P12") :: _::_(InputChar 'M') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'M'))) ::' rest , 2)
len-dec-rewrite {- P13-} ((Id "P13") :: _::_(InputChar 'N') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'N'))) ::' rest , 2)
len-dec-rewrite {- P14-} ((Id "P14") :: _::_(InputChar 'O') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'O'))) ::' rest , 2)
len-dec-rewrite {- P15-} ((Id "P15") :: _::_(InputChar 'P') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'P'))) ::' rest , 2)
len-dec-rewrite {- P16-} ((Id "P16") :: _::_(InputChar 'Q') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'Q'))) ::' rest , 2)
len-dec-rewrite {- P17-} ((Id "P17") :: _::_(InputChar 'R') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'R'))) ::' rest , 2)
len-dec-rewrite {- P18-} ((Id "P18") :: _::_(InputChar 'S') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'S'))) ::' rest , 2)
len-dec-rewrite {- P19-} ((Id "P19") :: _::_(InputChar 'T') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'T'))) ::' rest , 2)
len-dec-rewrite {- P2-} ((Id "P2") :: _::_(InputChar 'C') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'C'))) ::' rest , 2)
len-dec-rewrite {- P20-} ((Id "P20") :: _::_(InputChar 'U') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'U'))) ::' rest , 2)
len-dec-rewrite {- P21-} ((Id "P21") :: _::_(InputChar 'V') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'V'))) ::' rest , 2)
len-dec-rewrite {- P22-} ((Id "P22") :: _::_(InputChar 'W') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'W'))) ::' rest , 2)
len-dec-rewrite {- P23-} ((Id "P23") :: _::_(InputChar 'X') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'X'))) ::' rest , 2)
len-dec-rewrite {- P24-} ((Id "P24") :: _::_(InputChar 'Y') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'Y'))) ::' rest , 2)
len-dec-rewrite {- P25-} ((Id "P25") :: _::_(InputChar 'Z') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'Z'))) ::' rest , 2)
len-dec-rewrite {- P26-} ((Id "P26") :: _::_(InputChar 'a') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'a'))) ::' rest , 2)
len-dec-rewrite {- P27-} ((Id "P27") :: _::_(InputChar 'b') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'b'))) ::' rest , 2)
len-dec-rewrite {- P28-} ((Id "P28") :: _::_(InputChar 'c') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'c'))) ::' rest , 2)
len-dec-rewrite {- P29-} ((Id "P29") :: _::_(InputChar 'd') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'd'))) ::' rest , 2)
len-dec-rewrite {- P3-} ((Id "P3") :: _::_(InputChar 'D') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'D'))) ::' rest , 2)
len-dec-rewrite {- P30-} ((Id "P30") :: _::_(InputChar 'e') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'e'))) ::' rest , 2)
len-dec-rewrite {- P31-} ((Id "P31") :: _::_(InputChar 'f') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'f'))) ::' rest , 2)
len-dec-rewrite {- P32-} ((Id "P32") :: _::_(InputChar 'g') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'g'))) ::' rest , 2)
len-dec-rewrite {- P33-} ((Id "P33") :: _::_(InputChar 'h') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'h'))) ::' rest , 2)
len-dec-rewrite {- P34-} ((Id "P34") :: _::_(InputChar 'i') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'i'))) ::' rest , 2)
len-dec-rewrite {- P35-} ((Id "P35") :: _::_(InputChar 'j') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'j'))) ::' rest , 2)
len-dec-rewrite {- P36-} ((Id "P36") :: _::_(InputChar 'k') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'k'))) ::' rest , 2)
len-dec-rewrite {- P37-} ((Id "P37") :: _::_(InputChar 'l') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'l'))) ::' rest , 2)
len-dec-rewrite {- P38-} ((Id "P38") :: _::_(InputChar 'm') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'm'))) ::' rest , 2)
len-dec-rewrite {- P39-} ((Id "P39") :: _::_(InputChar 'n') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'n'))) ::' rest , 2)
len-dec-rewrite {- P4-} ((Id "P4") :: _::_(InputChar 'E') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'E'))) ::' rest , 2)
len-dec-rewrite {- P40-} ((Id "P40") :: _::_(InputChar 'o') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'o'))) ::' rest , 2)
len-dec-rewrite {- P41-} ((Id "P41") :: _::_(InputChar 'p') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'p'))) ::' rest , 2)
len-dec-rewrite {- P42-} ((Id "P42") :: _::_(InputChar 'q') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'q'))) ::' rest , 2)
len-dec-rewrite {- P43-} ((Id "P43") :: _::_(InputChar 'r') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'r'))) ::' rest , 2)
len-dec-rewrite {- P44-} ((Id "P44") :: _::_(InputChar 's') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 's'))) ::' rest , 2)
len-dec-rewrite {- P45-} ((Id "P45") :: _::_(InputChar 't') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 't'))) ::' rest , 2)
len-dec-rewrite {- P46-} ((Id "P46") :: _::_(InputChar 'u') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'u'))) ::' rest , 2)
len-dec-rewrite {- P47-} ((Id "P47") :: _::_(InputChar 'v') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'v'))) ::' rest , 2)
len-dec-rewrite {- P48-} ((Id "P48") :: _::_(InputChar 'w') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'w'))) ::' rest , 2)
len-dec-rewrite {- P49-} ((Id "P49") :: _::_(InputChar 'x') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'x'))) ::' rest , 2)
len-dec-rewrite {- P5-} ((Id "P5") :: _::_(InputChar 'F') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'F'))) ::' rest , 2)
len-dec-rewrite {- P50-} ((Id "P50") :: _::_(InputChar 'y') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'y'))) ::' rest , 2)
len-dec-rewrite {- P51-} ((Id "P51") :: _::_(InputChar 'z') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'z'))) ::' rest , 2)
len-dec-rewrite {- P52-} ((Id "P52") :: _::_(ParseTree (parsed-word-range-1 x0)) rest) = just (ParseTree (parsed-word-plus-2 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P53-} ((Id "P53") :: (ParseTree (parsed-word-range-1 x0)) :: _::_(ParseTree (parsed-word-plus-2 x1)) rest) = just (ParseTree (parsed-word-plus-2 (string-append 1 x0 x1)) ::' rest , 3)
len-dec-rewrite {- P54-} ((Id "P54") :: _::_(ParseTree (parsed-word-plus-2 x0)) rest) = just (ParseTree (parsed-word (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P55-} ((Id "P55") :: _::_(InputChar '0') rest) = just (ParseTree (parsed-num-range-3 (string-append 0 (char-to-string '0'))) ::' rest , 2)
len-dec-rewrite {- P56-} ((Id "P56") :: _::_(InputChar '1') rest) = just (ParseTree (parsed-num-range-3 (string-append 0 (char-to-string '1'))) ::' rest , 2)
len-dec-rewrite {- P57-} ((Id "P57") :: _::_(InputChar '2') rest) = just (ParseTree (parsed-num-range-3 (string-append 0 (char-to-string '2'))) ::' rest , 2)
len-dec-rewrite {- P58-} ((Id "P58") :: _::_(InputChar '3') rest) = just (ParseTree (parsed-num-range-3 (string-append 0 (char-to-string '3'))) ::' rest , 2)
len-dec-rewrite {- P59-} ((Id "P59") :: _::_(InputChar '4') rest) = just (ParseTree (parsed-num-range-3 (string-append 0 (char-to-string '4'))) ::' rest , 2)
len-dec-rewrite {- P6-} ((Id "P6") :: _::_(InputChar 'G') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'G'))) ::' rest , 2)
len-dec-rewrite {- P60-} ((Id "P60") :: _::_(InputChar '5') rest) = just (ParseTree (parsed-num-range-3 (string-append 0 (char-to-string '5'))) ::' rest , 2)
len-dec-rewrite {- P61-} ((Id "P61") :: _::_(InputChar '6') rest) = just (ParseTree (parsed-num-range-3 (string-append 0 (char-to-string '6'))) ::' rest , 2)
len-dec-rewrite {- P62-} ((Id "P62") :: _::_(InputChar '7') rest) = just (ParseTree (parsed-num-range-3 (string-append 0 (char-to-string '7'))) ::' rest , 2)
len-dec-rewrite {- P63-} ((Id "P63") :: _::_(InputChar '8') rest) = just (ParseTree (parsed-num-range-3 (string-append 0 (char-to-string '8'))) ::' rest , 2)
len-dec-rewrite {- P64-} ((Id "P64") :: _::_(InputChar '9') rest) = just (ParseTree (parsed-num-range-3 (string-append 0 (char-to-string '9'))) ::' rest , 2)
len-dec-rewrite {- P65-} ((Id "P65") :: _::_(ParseTree (parsed-num-range-3 x0)) rest) = just (ParseTree (parsed-num-plus-4 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P66-} ((Id "P66") :: (ParseTree (parsed-num-range-3 x0)) :: _::_(ParseTree (parsed-num-plus-4 x1)) rest) = just (ParseTree (parsed-num-plus-4 (string-append 1 x0 x1)) ::' rest , 3)
len-dec-rewrite {- P67-} ((Id "P67") :: _::_(ParseTree (parsed-num-plus-4 x0)) rest) = just (ParseTree (parsed-num (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P68-} ((Id "P68") :: _::_(InputChar '?') rest) = just (ParseTree (parsed-sep-bar-5 (string-append 0 (char-to-string '?'))) ::' rest , 2)
len-dec-rewrite {- P69-} ((Id "P69") :: _::_(InputChar '!') rest) = just (ParseTree (parsed-sep-bar-5 (string-append 0 (char-to-string '!'))) ::' rest , 2)
len-dec-rewrite {- P7-} ((Id "P7") :: _::_(InputChar 'H') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'H'))) ::' rest , 2)
len-dec-rewrite {- P70-} ((Id "P70") :: _::_(InputChar '.') rest) = just (ParseTree (parsed-sep-bar-6 (string-append 0 (char-to-string '.'))) ::' rest , 2)
len-dec-rewrite {- P71-} ((Id "P71") :: _::_(ParseTree (parsed-sep-bar-5 x0)) rest) = just (ParseTree (parsed-sep-bar-6 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P72-} ((Id "P72") :: _::_(InputChar ',') rest) = just (ParseTree (parsed-sep-bar-7 (string-append 0 (char-to-string ','))) ::' rest , 2)
len-dec-rewrite {- P73-} ((Id "P73") :: _::_(ParseTree (parsed-sep-bar-6 x0)) rest) = just (ParseTree (parsed-sep-bar-7 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P74-} ((Id "P74") :: _::_(ParseTree (parsed-sep-bar-7 x0)) rest) = just (ParseTree (parsed-sep (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P75-} ((Id "P75") :: _::_(ParseTree (parsed-num x0)) rest) = just (ParseTree (parsed-phrase-bar-8 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P76-} ((Id "P76") :: _::_(ParseTree (parsed-sep x0)) rest) = just (ParseTree (parsed-phrase-bar-8 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P77-} ((Id "P77") :: _::_(ParseTree (parsed-word x0)) rest) = just (ParseTree (parsed-phrase-bar-9 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P78-} ((Id "P78") :: _::_(ParseTree (parsed-phrase-bar-8 x0)) rest) = just (ParseTree (parsed-phrase-bar-9 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P79-} ((Id "P79") :: _::_(ParseTree (parsed-phrase-bar-9 x0)) rest) = just (ParseTree (parsed-phrase-plus-10 (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P8-} ((Id "P8") :: _::_(InputChar 'I') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'I'))) ::' rest , 2)
len-dec-rewrite {- P80-} ((Id "P80") :: (ParseTree (parsed-phrase-bar-9 x0)) :: _::_(ParseTree (parsed-phrase-plus-10 x1)) rest) = just (ParseTree (parsed-phrase-plus-10 (string-append 1 x0 x1)) ::' rest , 3)
len-dec-rewrite {- P81-} ((Id "P81") :: _::_(ParseTree (parsed-phrase-plus-10 x0)) rest) = just (ParseTree (parsed-phrase (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P82-} ((Id "P82") :: (ParseTree (parsed-phrase x0)) :: (ParseTree (parsed-sp x1)) :: _::_(ParseTree (parsed-sentence x2)) rest) = just (ParseTree (parsed-sentence (string-append 2 x0 x1 x2)) ::' rest , 4)
len-dec-rewrite {- P83-} ((Id "P83") :: _::_(ParseTree (parsed-phrase x0)) rest) = just (ParseTree (parsed-sentence (string-append 0 x0)) ::' rest , 2)
len-dec-rewrite {- P84-} ((Id "P84") :: _::_(InputChar ' ') rest) = just (ParseTree (parsed-sp (string-append 0 (char-to-string ' '))) ::' rest , 2)
len-dec-rewrite {- P85-} ((Id "P85") :: _::_(InputChar '\t') rest) = just (ParseTree parsed-aws-bar-11 ::' rest , 2)
len-dec-rewrite {- P86-} ((Id "P86") :: _::_(InputChar '\n') rest) = just (ParseTree parsed-aws-bar-11 ::' rest , 2)
len-dec-rewrite {- P87-} ((Id "P87") :: _::_(InputChar ' ') rest) = just (ParseTree parsed-aws-bar-12 ::' rest , 2)
len-dec-rewrite {- P88-} ((Id "P88") :: _::_(ParseTree parsed-aws-bar-11) rest) = just (ParseTree parsed-aws-bar-12 ::' rest , 2)
len-dec-rewrite {- P89-} ((Id "P89") :: _::_(ParseTree parsed-aws-bar-12) rest) = just (ParseTree parsed-aws ::' rest , 2)
len-dec-rewrite {- P9-} ((Id "P9") :: _::_(InputChar 'J') rest) = just (ParseTree (parsed-word-range-1 (string-append 0 (char-to-string 'J'))) ::' rest , 2)
len-dec-rewrite {- P90-} ((Id "P90") :: _::_(ParseTree parsed-aws) rest) = just (ParseTree parsed-ws-plus-13 ::' rest , 2)
len-dec-rewrite {- P91-} ((Id "P91") :: (ParseTree parsed-aws) :: _::_(ParseTree parsed-ws-plus-13) rest) = just (ParseTree parsed-ws-plus-13 ::' rest , 3)
len-dec-rewrite {- P92-} ((Id "P92") :: _::_(ParseTree parsed-ws-plus-13) rest) = just (ParseTree parsed-ws ::' rest , 2)
len-dec-rewrite {- P94-} ((Id "P94") :: (ParseTree parsed-aws) :: _::_(ParseTree parsed-ows-star-14) rest) = just (ParseTree parsed-ows-star-14 ::' rest , 3)
len-dec-rewrite {- P95-} ((Id "P95") :: _::_(ParseTree parsed-ows-star-14) rest) = just (ParseTree parsed-ows ::' rest , 2)
len-dec-rewrite {- Package-} ((Id "Package") :: (InputChar 'p') :: (InputChar 'a') :: (InputChar 'c') :: (InputChar 'k') :: (InputChar 'a') :: (InputChar 'g') :: (InputChar 'e') :: (InputChar ' ') :: (ParseTree (parsed-word x0)) :: _::_(InputChar ';') rest) = just (ParseTree (parsed-package (norm-package (Package x0))) ::' rest , 11)
len-dec-rewrite {- Param-} ((Id "Param") :: (ParseTree parsed-ows) :: (InputChar '*') :: (InputChar ' ') :: (ParseTree parsed-ows) :: (InputChar '@') :: (InputChar 'p') :: (InputChar 'a') :: (InputChar 'r') :: (InputChar 'a') :: (InputChar 'm') :: (InputChar ' ') :: (ParseTree (parsed-type x0)) :: _::_(ParseTree (parsed-detail x1)) rest) = just (ParseTree (parsed-description (norm-description (Param x0 x1))) ::' rest , 14)
len-dec-rewrite {- Parameter-} ((Id "Parameter") :: (ParseTree (parsed-type x0)) :: (ParseTree parsed-ows) :: _::_(ParseTree (parsed-word x1)) rest) = just (ParseTree (parsed-parameter (norm-parameter (Parameter x0 x1))) ::' rest , 4)
len-dec-rewrite {- Private-} ((Id "Private") :: (InputChar 'p') :: (InputChar 'r') :: (InputChar 'i') :: (InputChar 'v') :: (InputChar 'a') :: (InputChar 't') :: _::_(InputChar 'e') rest) = just (ParseTree (parsed-encap (norm-encap Private)) ::' rest , 8)
len-dec-rewrite {- Protected-} ((Id "Protected") :: (InputChar 'p') :: (InputChar 'r') :: (InputChar 'o') :: (InputChar 't') :: (InputChar 'e') :: (InputChar 'c') :: (InputChar 't') :: (InputChar 'e') :: _::_(InputChar 'd') rest) = just (ParseTree (parsed-encap (norm-encap Protected)) ::' rest , 10)
len-dec-rewrite {- Public-} ((Id "Public") :: (InputChar 'p') :: (InputChar 'u') :: (InputChar 'b') :: (InputChar 'l') :: (InputChar 'i') :: _::_(InputChar 'c') rest) = just (ParseTree (parsed-encap (norm-encap Public)) ::' rest , 7)
len-dec-rewrite {- Return-} ((Id "Return") :: (ParseTree parsed-ows) :: (InputChar '*') :: (InputChar ' ') :: (ParseTree parsed-ows) :: (InputChar '@') :: (InputChar 'r') :: (InputChar 'e') :: (InputChar 't') :: (InputChar 'u') :: (InputChar 'r') :: (InputChar 'n') :: (InputChar ' ') :: (ParseTree (parsed-type x0)) :: _::_(ParseTree (parsed-detail x1)) rest) = just (ParseTree (parsed-description (norm-description (Return x0 x1))) ::' rest , 15)
len-dec-rewrite {- ReturnType-} ((Id "ReturnType") :: _::_(ParseTree (parsed-word x0)) rest) = just (ParseTree (parsed-type (norm-type (ReturnType x0))) ::' rest , 2)
len-dec-rewrite {- See-} ((Id "See") :: (ParseTree parsed-ows) :: (InputChar '*') :: (InputChar ' ') :: (ParseTree parsed-ows) :: (InputChar '@') :: (InputChar 's') :: (InputChar 'e') :: (InputChar 'e') :: (InputChar ' ') :: _::_(ParseTree (parsed-type x0)) rest) = just (ParseTree (parsed-description (norm-description (See x0))) ::' rest , 11)
len-dec-rewrite {- Static-} ((Id "Static") :: (InputChar 's') :: (InputChar 't') :: (InputChar 'a') :: (InputChar 't') :: (InputChar 'i') :: _::_(InputChar 'c') rest) = just (ParseTree (parsed-status (norm-status Static)) ::' rest , 7)
len-dec-rewrite {- Strt-} ((Id "Strt") :: (ParseTree parsed-ows) :: (ParseTree (parsed-package x0)) :: (ParseTree parsed-ows) :: (ParseTree (parsed-imports x1)) :: (ParseTree (parsed-class x2)) :: _::_(ParseTree parsed-ows) rest) = just (ParseTree (parsed-strt (norm-strt (Strt x0 x1 x2))) ::' rest , 7)
len-dec-rewrite {- Version-} ((Id "Version") :: (ParseTree parsed-ows) :: (InputChar '*') :: (InputChar ' ') :: (ParseTree parsed-ows) :: (InputChar '@') :: (InputChar 'v') :: (InputChar 'e') :: (InputChar 'r') :: (InputChar 's') :: (InputChar 'i') :: (InputChar 'o') :: (InputChar 'n') :: (InputChar ' ') :: _::_(ParseTree (parsed-sentence x0)) rest) = just (ParseTree (parsed-description (norm-description (Version x0))) ::' rest , 15)
len-dec-rewrite {- VoidType-} ((Id "VoidType") :: (InputChar 'v') :: (InputChar 'o') :: (InputChar 'i') :: _::_(InputChar 'd') rest) = just (ParseTree (parsed-type (norm-type VoidType)) ::' rest , 5)
len-dec-rewrite {- ConstructNil-} (_::_(Id "ConstructNil") rest) = just (ParseTree (parsed-construct (norm-construct ConstructNil)) ::' rest , 1)
len-dec-rewrite {- DescriNil-} (_::_(Id "DescriNil") rest) = just (ParseTree (parsed-descriptions (norm-descriptions DescriNil)) ::' rest , 1)
len-dec-rewrite {- DetailNil-} (_::_(Id "DetailNil") rest) = just (ParseTree (parsed-detail (norm-detail DetailNil)) ::' rest , 1)
len-dec-rewrite {- ImportNil-} (_::_(Id "ImportNil") rest) = just (ParseTree (parsed-imports (norm-imports ImportNil)) ::' rest , 1)
len-dec-rewrite {- MethodNil-} (_::_(Id "MethodNil") rest) = just (ParseTree (parsed-methods (norm-methods MethodNil)) ::' rest , 1)
len-dec-rewrite {- NoAbstract-} (_::_(Id "NoAbstract") rest) = just (ParseTree (parsed-abstra (norm-abstra NoAbstract)) ::' rest , 1)
len-dec-rewrite {- NoEncap-} (_::_(Id "NoEncap") rest) = just (ParseTree (parsed-encap (norm-encap NoEncap)) ::' rest , 1)
len-dec-rewrite {- NoParameter-} (_::_(Id "NoParameter") rest) = just (ParseTree (parsed-parameter (norm-parameter NoParameter)) ::' rest , 1)
len-dec-rewrite {- NoStatus-} (_::_(Id "NoStatus") rest) = just (ParseTree (parsed-status (norm-status NoStatus)) ::' rest , 1)
len-dec-rewrite {- P93-} (_::_(Id "P93") rest) = just (ParseTree parsed-ows-star-14 ::' rest , 1)
len-dec-rewrite {- PackageNil-} (_::_(Id "PackageNil") rest) = just (ParseTree (parsed-package (norm-package PackageNil)) ::' rest , 1)
len-dec-rewrite {- Posinfo-} (_::_(Posinfo n) rest) = just (ParseTree (parsed-posinfo (ℕ-to-string n)) ::' rest , 1)
len-dec-rewrite x = nothing

rrs : rewriteRules
rrs = record { len-dec-rewrite = len-dec-rewrite }
