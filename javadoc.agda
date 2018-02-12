module javadoc where

import parse
open import lib
open import java-types
import java

module parsem = parse java.gratr2-nt ptr
open parsem
open parsem.pnoderiv java.rrs java.java-rtn
open import run ptr
open noderiv {- from run.agda -}

open import stylesheet


--------------------------Utility methods-------------------------
detail-to-string : detail → string
detail-to-string (Detail x) = x
detail-to-string DetailNil = ""

encap-to-string : encap → string
encap-to-string NoEncap = ""
encap-to-string Private = "private"
encap-to-string Protected = "protected"
encap-to-string Public = "public"

type-to-string : type → string
type-to-string (ReturnType x) = x
type-to-string VoidType = "void"

param-to-string : parameter → string
param-to-string NoParameter = ""
param-to-string (Parameter x x₁) = (type-to-string x) ^ " " ^ x₁

get-summary-comment : comment → string
get-summary-comment (Comment d dt) = detail-to-string d

get-classname : strt → string
get-classname (Strt package imports (Class com abs enc stat (ClassName name) constr meths)) = name

get-description-comment : comment → string
get-description-comment (Comment detail (DescrMulti (Author x) d))
                        = get-description-comment (Comment detail d)
get-description-comment (Comment detail (DescrMulti (DescrSingl x) d))
                        = x ^ "\n" ^ get-description-comment (Comment detail d)
get-description-comment (Comment detail (DescrMulti Emptycom d))
                        = get-description-comment (Comment detail d)
get-description-comment (Comment detail (DescrMulti (Param x x₁) d))
                        = get-description-comment (Comment detail d)
get-description-comment (Comment detail (DescrMulti (Return x x₁) d))
                        = get-description-comment (Comment detail d)
get-description-comment (Comment detail (DescrMulti (See x) d)) 
                        = get-description-comment (Comment detail d)
get-description-comment (Comment detail (DescrMulti (Version x) d))
                        = get-description-comment (Comment detail d)
get-description-comment (Comment detail DescriNil) = ""


----------------------------end of utility methods------------------------------
---
heading : className → string
heading (ClassName c) = "
<html lang=\"en\">\n
<head>" ^ "\n
<title>" ^ c ^ " </title>" ^ "\n
<link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\" title=\"Style\">" ^ "\n
<script type=\"text/javascript\" src=\"script.js\"></script>" ^ "\n
</head>" ^ "\n
<body>" ^ "\n
<script type=\"text/javascript\">" ^ "\n
var methods = {\"i0\":10,\"i1\":10};" ^ "\n
var tabs = {65535:[\"t0\",\"All Methods\"],2:[\"t2\",\"Instance Methods\"],8:[\"t4\",\"Concrete Methods\"]};" ^ "\n
var altColor = \"altColor\";" ^ "\n
var rowColor = \"rowColor\";" ^ "\n
var tableTab = \"tableTab\";" ^ "\n
var activeTableTab = \"activeTableTab\";" ^ "\n
</script>" ^ "\n
<noscript>" ^ "\n
<div>JavaScript is disabled on your browser.</div>" ^ "\n
</noscript>\n"

---
navibar : string
navibar = " <div class=\"topNav\"><a name=\"navbar.top\">\n" ^ "
</a>\n" ^ "
<div class=\"skipNav\"><a href=\"#skip.navbar.top\" title=\"Skip navigation links>Skip navigation links</a></div>\n" ^ "
<a name=\"navbar.top.firstrow\">\n" ^ "
</a>\n" ^ "
<ul class=\"navList\" title=\"Navigation\">\n" ^ "
<li><a>Package</a></li>\n" ^ "
<li class=\"navBarCell1Rev\">Class</li>\n" ^ "
<li><a>Tree</a></li>\n" ^ "
<li><a>Deprecated</a></li>\n" ^ "
<li><a>Index</a></li>\n" ^ "
<li><a>Help</a></li>\n" ^ "
</ul>\n" ^ "
</div>\n" ^ "
<div class=\"subNav\">\n" ^ "
<ul class=\"navList\">\n" ^ "
<li>Prev&nbsp;Class</li>\n" ^ "
<li>Next&nbsp;Class</li>\n" ^ "
</ul>\n" ^ "
<ul class=\"navList\">\n" ^ "
<li><a>Frames</a></li>\n" ^ "
<li><a>No&nbsp;Frames</a></li>\n" ^ "
</ul>\n" ^ "
<ul class=\"navList\" id=\"allclasses_navbar_top\">\n" ^ "
<li><a>All&nbsp;Classes</a></li>\n" ^ "
</ul>\n" ^ "
<div>\n" ^ "
<script type=\"text/javascript\">\n" ^ "
</script>\n" ^ "
</div>\n" ^ "
<div>\n" ^ "
<ul class=\"subNavList\">\n" ^ "
<li>Summary:&nbsp;</li>\n" ^ "
<li>Nested&nbsp;|&nbsp;</li>\n" ^ "
<li>Field&nbsp;|&nbsp;</li>\n" ^ "
<li><a href=\"#constructor.summary\">Constr</a>&nbsp;|&nbsp;</li>\n" ^ "
<li><a href=\"#method.summary\">Method</a></li>\n
</ul>\n
<ul class=\"subNavList\">\n
<li>Detail:&nbsp;</li>\n
<li>Field&nbsp;|&nbsp;</li>\n
<li><a href=\"#constructor.detail\">Constr</a>&nbsp;|&nbsp;</li>\n
<li><a href=\"#method.detailn\">Method</a></li>\n
</ul>\n
</div>\n
<a name=\"skip.navbar.top\">\n
</a></div>\n"

classDataEnd = "
</li>" ^ "\n
</ul>" ^ "\n
</div>" ^ "\n
<div class=\"summary\">" ^ "\n
<ul class=\"blockList\">" ^ "\n
<li class=\"blockList\">\n"

seePart : descriptions → 𝕃 string
seePart (DescrMulti (Author x) d) = seePart d
seePart (DescrMulti (DescrSingl x) d) = seePart d
seePart (DescrMulti Emptycom d) = seePart d
seePart (DescrMulti (Param x x₁) d) = seePart d
seePart (DescrMulti (Return x x₁) d) = seePart d
seePart (DescrMulti (Version x) d) = seePart d
seePart (DescrMulti (See class) d) = ("<code>" ^ (type-to-string class) ^ "</code>") :: (seePart d)
seePart DescriNil = []

seePart2 : descriptions → string
seePart2 d = string-concat-sep (", \n") (seePart d)

des-contain-see : descriptions → 𝔹
des-contain-see (DescrMulti (Author x) d) = ff || (des-contain-see d)
des-contain-see (DescrMulti (DescrSingl x) d) = ff || (des-contain-see d)
des-contain-see (DescrMulti Emptycom d) = ff || (des-contain-see d)
des-contain-see (DescrMulti (Param x x₁) d) = ff || (des-contain-see d)
des-contain-see (DescrMulti (Return x x₁) d) = ff || (des-contain-see d)
des-contain-see (DescrMulti (Version x ) d) = ff || (des-contain-see d)
des-contain-see (DescrMulti (See x) d) = tt
des-contain-see DescriNil = ff

seeHtml : descriptions → string
seeHtml d with (des-contain-see d)
... | tt = "
<dl>" ^ "\n
<dt><span class=\"seeLabel\">See Also:</span></dt>" ^ "\n
<dd>" ^ (seePart2 d) ^ "\n
</dd>" ^ "\n
</dl>\n"
... | ff = ""

---
classData : package → class → string
classData (Package x) (Class (Comment det descs) abs enc stat (ClassName name) const meth) = " 
<div class=\"header\">" ^ "\n
<div class=\"subTitle\">" ^ x ^ "</div>" ^ "\n
<h2 title=\"Class Inventory\" class=\"title\">Class " ^ name ^ "</h2>" ^ "\n
</div>" ^ "\n
<div class=\"contentContainer\">" ^ "\n
<ul class=\"inheritance\">" ^ "\n
<li>java.lang.Object</li>" ^ "\n
<li>" ^ "\n
<ul class=\"inheritance\">" ^ "\n
<li>" ^ x ^ "." ^ name ^ "</li>" ^ "\n
</ul>" ^ "\n
</li>" ^ "\n
</ul>" ^ "\n
<div class=\"description\">" ^ "\n
<ul class=\"blockList\">" ^ "\n
<li class=\"blockList\">" ^ "\n
<hr>" ^ "\n
<br>" ^ "\n
<pre>" ^ (encap-to-string enc) ^ " class <span class=\"typeNameLabel\">" ^ name ^ "</span>" ^ "\n
extends java.lang.Object</pre>" ^ "\n
<div class=\"block\">" ^ (detail-to-string det) ^ "</div>" ^ (seeHtml descs) ^ classDataEnd ^ "\n"
classData PackageNil (Class (Comment det descs) abs enc stat (ClassName name) const meth) = "
<div class=\"header\">" ^ "\n
<h2 title=\"Class Inventory\" class=\"title\">Class " ^ name ^ "</h2>" ^ "\n
</div>" ^ "\n
<div class=\"contentContainer\">" ^ "\n
<ul class=\"inheritance\">" ^ "\n
<li>java.lang.Object</li>" ^ "\n
<li>" ^ "\n
<ul class=\"inheritance\">" ^ "\n
<li>" ^ name ^ "</li>" ^ "\n
</ul>" ^ "\n
</li>" ^ "\n
</ul>" ^ "\n
<div class=\"description\">" ^ "\n
<ul class=\"blockList\">" ^ "\n
<li class=\"blockList\">" ^ "\n
<hr>" ^ "\n
<br>" ^ "\n
<pre>" ^ (encap-to-string enc) ^ " class <span class=\"typeNameLabel\">" ^ name ^ "</span>" ^ "\n
extends java.lang.Object</pre>" ^ "\n
<div class=\"block\">" ^ (detail-to-string det) ^ "</div>" ^ (seeHtml descs) ^ classDataEnd ^ "\n"


constructorSummary : construct → className → string
constructorSummary ConstructNil (ClassName classname) = "
<ul class=\"blockList\">" ^ "\n
<li class=\"blockList\"><a name=\"constructor.summary\">" ^ "\n
</a>" ^ "\n
<h3>Constructor Summary</h3>" ^ "\n
<table class=\"memberSummary\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" summary=\"Constructor Summary table, listing constructors, and an explanation\">" ^ "\n
<caption><span>Constructors</span><span class=\"tabEnd\">&nbsp;</span></caption>" ^ "\n
<tr>" ^ "\n
<th class=\"colOne\" scope=\"col\">Constructor and Description</th>" ^ "\n
</tr>" ^ "\n
<tr class=\"altColor\">" ^ "\n
<td class=\"colOne\"><code><span class=\"memberNameLink\"><a href=\"" ^ classname ^ ".html#" ^ classname ^ "--\">" ^ classname ^ "</a></span>()</code>" ^ "\n
<div class=\"block\">" ^ "\n
</div>" ^ "\n
</td>" ^ "\n
</tr>" ^ "\n
</table>" ^ "\n
</li>" ^ "\n
</ul>\n"
constructorSummary (Constructor com enc cls param) (ClassName classname)  = "
<ul class=\"blockList\">" ^ "\n
<li class=\"blockList\"><a name=\"constructor.summary\">" ^ "\n
</a>" ^ "\n
<h3>Constructor Summary</h3>" ^ "\n
<table class=\"memberSummary\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" summary=\"Constructor Summary table, listing constructors, and an explanation\">" ^ "\n
<caption><span>Constructors</span><span class=\"tabEnd\">&nbsp;</span></caption>" ^ "\n
<tr>" ^ "\n
<th class=\"colOne\" scope=\"col\">Constructor and Description</th>" ^ "\n
</tr>" ^ "\n
<tr class=\"altColor\">" ^ "\n
<td class=\"colOne\"><code><span class=\"memberNameLink\"><a href=\"" ^ classname ^ ".html#" ^ classname ^ "--\">" ^ classname ^ "</a></span>(" ^ (param-to-string param) ^ ")</code>" ^ "\n
<div class=\"block\">" ^ (get-description-comment com) ^ "\n
</div>" ^ "\n
</td>" ^ "\n
</tr>" ^ "\n
</table>" ^ "\n
</li>" ^ "\n
</ul>\n"

meth-sum-start : string
meth-sum-start = "
<ul class=\"blockList\">\n
<li class=\"blockList\"><a name=\"method.summary\">\n
</a>\n
<h3>Method Summary</h3>\n
<table class=\"memberSummary\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" summary=\"Method Summary table, listing methods, and an explanation\">\n
<caption><span id=\"t0\" class=\"activeTableTab\"><span>All Methods</span><span class=\"tabEnd\">&nbsp;</span></span><span id=\"t2\" class=\"tableTab\"><span><a href=\"javascript:show(2);\">Instance Methods</a></span><span class=\"tabEnd\">&nbsp;</span></span><span id=\"t4\" class=\"tableTab\"><span><a href=\"javascript:show(8);\">Concrete Methods</a></span><span class=\"tabEnd\">&nbsp;</span></span></caption>\n
<tr>\n
<th class=\"colFirst\" scope=\"col\">Modifier and Type</th>\n
<th class=\"colLast\" scope=\"col\">Method and Description</th>\n
</tr>\n" 



meth-sum-one : method → className → string
meth-sum-one (Method com abs enc typ (MethodName name) param) (ClassName cls) = "
<tr id=\"i0\" class=\"altColor\">\n
<td class=\"colFirst\"><code>" ^ (type-to-string typ) ^ "</code></td>\n
<td class=\"colLast\"><code><span class=\"memberNameLink\"><a href=\"Inventory.html#" ^ name ^ "--\">" ^ name ^ "</a></span>(" ^ (param-to-string param) ^ ")</code>\n
<div class=\"block\">" ^ (get-description-comment com) ^ "</div>\n
</td>\n
</tr>\n"

meth-sum-multi : methods → className → string
meth-sum-multi MethodNil c = ""
meth-sum-multi (Methods x m) c = (meth-sum-one x c ) ^ (meth-sum-multi m c )

meth-contain-tostring : methods → 𝔹
meth-contain-tostring MethodNil = ff
meth-contain-tostring (Methods (Method com abs enc typ (MethodName name) param) ms)
                               = (name =string "toString") || (meth-contain-tostring ms)

meth-tostr : methods → string
meth-tostr m = if (meth-contain-tostring m) then "" else "toString, "

meth-sum-end : methods → string
meth-sum-end m = "
</table>\n
<ul class=\"blockList\">\n
<li class=\"blockList\"><a name=\"methods.inherited.from.class.java.lang.Object\">\n
</a>\n
<h3>Methods inherited from class&nbsp;java.lang.Object</h3>\n
<code>clone, equals, finalize, getClass, hashCode, notify, notifyAll, " ^ (meth-tostr m) ^ " wait, wait, wait</code></li>\n
</ul>\n
</li>\n
</ul>\n
</li>\n
</ul>\n
</div>\n
<div class=\"details\">\n
<ul class=\"blockList\">\n
<li class=\"blockList\">\n"


methodSummary : methods → className → string
methodSummary m cls = meth-sum-start ^ (meth-sum-multi m cls) ^  (meth-sum-end m)



--
constructorDetail : construct → className → string
constructorDetail ConstructNil (ClassName x) = ""
constructorDetail (Constructor com enc cls param) (ClassName class) = "
<ul class=\"blockList\">\n
<li class=\"blockList\"><a name=\"constructor.detail\">\n
</a>\n
<h3>Constructor Detail</h3>\n
<a name=\"" ^ class ^ "--\">\n
</a>\n
<ul class=\"blockListLast\">\n
<li class=\"blockList\">\n
<h4>" ^ class ^ "</h4>\n
<pre>public&nbsp;" ^ class ^ "(" ^ (param-to-string param) ^ ")</pre>\n
<div class=\"block\">" ^ (get-description-comment com) ^ "\n
 </div>\n
</li>\n
</ul>\n
</li>\n
</ul>\n"


meth-det-one : method → string
meth-det-one (Method com abs enc typ (MethodName name) param) =  "
<a name=\"" ^ name ^ "-\">\n
</a>\n
<ul class=\"blockListLast\">\n
<li class=\"blockList\">\n
<h4>" ^ name ^ "</h4>\n
<pre>" ^ (encap-to-string enc) ^ "&nbsp;" ^ (type-to-string typ) ^ "&nbsp;"
  ^ name ^ "(" ^ (param-to-string param) ^ ")</pre>\n
<div class=\"block\">" ^ (get-description-comment com) ^ "</div>\n
<dl>\n
<dt><span class=\"paramLabel\">Parameters:</span></dt>\n
<dd><code>int</code> - new units coffee</dd>\n
</dl>\n
</li>\n
</ul>\n"


meth-det-multi : methods → string
meth-det-multi MethodNil = ""
meth-det-multi (Methods x m) = (meth-det-one x) ^ (meth-det-multi m)

methodDetail : methods → string
methodDetail m = "
<ul class=\"blockList\">\n
<li class=\"blockList\"><a name=\"method.detail\">\n
</a>\n
<h3>Method Detail</h3>\n" ^ (meth-det-multi m) ^ "
</li>\n
</ul>\n
</li>\n
</ul>\n
</div>\n
</div>\n"

bottomNavibar : className → string
bottomNavibar (ClassName name) ="
<div class=\"bottomNav\"><a name=\"navbar.bottom\">\n
</a>\n
<div class=\"skipNav\"><a href=\"#skip.navbar.bottom\" title=\"Skip navigation links\">Skip navigation links</a></div>\n
<a name=\"navbar.bottom.firstrow\">\n
</a>\n
<ul class=\"navList\" title=\"Navigation\">\n
<li><a href=\"package-summary.html\">Package</a></li>\n
<li class=\"navBarCell1Rev\">Class</li>\n
<li><a href=\"package-tree.html\">Tree</a></li>\n
<li><a href=\"deprecated-list.html\">Deprecated</a></li>\n
<li><a href=\"index-all.html\">Index</a></li>\n
<li><a href=\"help-doc.html\">Help</a></li>\n
</ul>\n
</div>\n
<div class=\"subNav\">\n
<ul class=\"navList\">\n
<li>Prev&nbsp;Class</li>\n
<li>Next&nbsp;Class</li>\n
</ul>\n
<ul class=\"navList\">\n
<li><a href=\"index.html?" ^ name ^ "html\" target=\"_top\">Frames</a></li>\n
<li><a href=\"" ^ name ^ ".html\" target=\"_top\">No&nbsp;Frames</a></li>\n
</ul>\n
<ul class=\"navList\" id=\"allclasses_navbar_bottom\">\n
<li><a href=\"allclasses-noframe.html\">All&nbsp;Classes</a></li>\n
</ul>\n
<div>\n
<script type=\"text/javascript\">
</script>\n
</div>\n
<div>\n
<ul class=\"subNavList\">\n
<li>Summary:&nbsp;</li>\n
<li>Nested&nbsp;|&nbsp;</li>\n
<li>Field&nbsp;|&nbsp;</li>\n
<li><a href=\"#constructor.summary\">Constr</a>&nbsp;|&nbsp;</li>\n
<li><a href=\"#method.summary\">Method</a></li>\n
</ul>\n
<ul class=\"subNavList\">\n
<li>Detail:&nbsp;</li>\n
<li>Field&nbsp;|&nbsp;</li>\n
<li><a href=\"#constructor.detail\">Constr</a>&nbsp;|&nbsp;</li>\n
<li><a href=\"#method.detail\">Method</a></li>\n
</ul>\n
</div>\n
<a name=\"skip.navbar.bottom\">\n
</a></div>\n
</body>\n
</html>\n"

process-strt : strt → string
process-strt (Strt package imports (Class com abs enc stat name constr meths))
  = (heading name) ^ navibar ^ (classData package (Class com abs enc stat name constr meths))
             ^ (constructorSummary constr name) ^ (methodSummary meths name)
             ^ (constructorDetail constr name) ^ (methodDetail meths) ^ (bottomNavibar name)

writeToFiles : string → string → IO ⊤
writeToFiles classname contents =
  writeFile (classname ^ ".html") contents

writeStylesheet :  IO ⊤
writeStylesheet = writeFile ("stylesheet" ^ ".css") stylesheet

process : Run → IO ⊤
process (ParseTree (parsed-strt p) :: []) =
  writeToFiles (get-classname p) (process-strt p) >> writeStylesheet 
process r = putStr ("Parsing failure (run with -" ^ "-showParsed).\n")

putStrRunIf : 𝔹 → Run → IO ⊤
putStrRunIf tt r = putStr (Run-to-string r) >> putStr "\n"
putStrRunIf ff r = return triv

processArgs : (showRun : 𝔹) → (showParsed : 𝔹) → 𝕃 string → IO ⊤ 
processArgs showRun showParsed (input-filename :: []) = (readFiniteFile input-filename) >>= processText
  where processText : string → IO ⊤
        processText x with runRtn (string-to-𝕃char x)
        processText x | s with s
        processText x | s | inj₁ cs = putStr "Characters left before failure : " >> putStr (𝕃char-to-string cs) >> putStr "\nCannot proceed to parsing.\n"
        processText x | s | inj₂ r with putStrRunIf showRun r | rewriteRun r
        processText x | s | inj₂ r | sr | r' with putStrRunIf showParsed r'
        processText x | s | inj₂ r | sr | r' | sr' = sr >> sr' >> process r'
                                     
processArgs showRun showParsed ("--showRun" :: xs) = processArgs tt showParsed xs 
processArgs showRun showParsed ("--showParsed" :: xs) = processArgs showRun tt xs 
processArgs showRun showParsed (x :: xs) = putStr ("Unknown option " ^ x ^ "\n")
processArgs showRun showParsed [] = putStr "Please run with the name of a file to process.\n"

main : IO ⊤
main = getArgs >>= processArgs ff ff

