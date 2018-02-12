----------------------------------------------------------------------------------
-- Types for parse trees
----------------------------------------------------------------------------------

module java-types where

open import lib
open import parse-tree

posinfo = string
num = string
num-plus-4 = string
num-range-3 = string
phrase = string
phrase-bar-8 = string
phrase-bar-9 = string
phrase-plus-10 = string
sentence = string
sep = string
sep-bar-5 = string
sep-bar-6 = string
sep-bar-7 = string
sp = string
word = string
word-plus-2 = string
word-range-1 = string

mutual

  data abstra : Set where 
    Abstract : abstra
    NoAbstract : abstra

  data class : Set where 
    Class : comment → abstra → encap → status → className → construct → methods → class

  data className : Set where 
    ClassName : word → className

  data comment : Set where 
    Comment : detail → descriptions → comment

  data construct : Set where 
    ConstructNil : construct
    Constructor : comment → encap → className → parameter → construct

  data description : Set where 
    Author : sentence → description
    DescrSingl : sentence → description
    Emptycom : description
    Param : type → detail → description
    Return : type → detail → description
    See : type → description
    Version : sentence → description

  data descriptions : Set where 
    DescrMulti : description → descriptions → descriptions
    DescriNil : descriptions

  data detail : Set where 
    Detail : sentence → detail
    DetailNil : detail

  data encap : Set where 
    NoEncap : encap
    Private : encap
    Protected : encap
    Public : encap

  data imp : Set where 
    Imp : sentence → imp

  data imports : Set where 
    ImportCons : imp → imports → imports
    ImportNil : imports

  data method : Set where 
    Method : comment → abstra → encap → type → methodName → parameter → method

  data methodName : Set where 
    MethodName : word → methodName

  data methods : Set where 
    MethodNil : methods
    Methods : method → methods → methods

  data package : Set where 
    Package : word → package
    PackageNil : package

  data parameter : Set where 
    NoParameter : parameter
    Parameter : type → word → parameter

  data status : Set where 
    Final : status
    NoStatus : status
    Static : status

  data strt : Set where 
    Strt : package → imports → class → strt

  data type : Set where 
    ReturnType : word → type
    VoidType : type

-- embedded types:

data ParseTreeT : Set where
  parsed-abstra : abstra → ParseTreeT
  parsed-class : class → ParseTreeT
  parsed-className : className → ParseTreeT
  parsed-comment : comment → ParseTreeT
  parsed-construct : construct → ParseTreeT
  parsed-description : description → ParseTreeT
  parsed-descriptions : descriptions → ParseTreeT
  parsed-detail : detail → ParseTreeT
  parsed-encap : encap → ParseTreeT
  parsed-imp : imp → ParseTreeT
  parsed-imports : imports → ParseTreeT
  parsed-method : method → ParseTreeT
  parsed-methodName : methodName → ParseTreeT
  parsed-methods : methods → ParseTreeT
  parsed-package : package → ParseTreeT
  parsed-parameter : parameter → ParseTreeT
  parsed-status : status → ParseTreeT
  parsed-strt : strt → ParseTreeT
  parsed-type : type → ParseTreeT
  parsed-posinfo : posinfo → ParseTreeT
  parsed-num : num → ParseTreeT
  parsed-num-plus-4 : num-plus-4 → ParseTreeT
  parsed-num-range-3 : num-range-3 → ParseTreeT
  parsed-phrase : phrase → ParseTreeT
  parsed-phrase-bar-8 : phrase-bar-8 → ParseTreeT
  parsed-phrase-bar-9 : phrase-bar-9 → ParseTreeT
  parsed-phrase-plus-10 : phrase-plus-10 → ParseTreeT
  parsed-sentence : sentence → ParseTreeT
  parsed-sep : sep → ParseTreeT
  parsed-sep-bar-5 : sep-bar-5 → ParseTreeT
  parsed-sep-bar-6 : sep-bar-6 → ParseTreeT
  parsed-sep-bar-7 : sep-bar-7 → ParseTreeT
  parsed-sp : sp → ParseTreeT
  parsed-word : word → ParseTreeT
  parsed-word-plus-2 : word-plus-2 → ParseTreeT
  parsed-word-range-1 : word-range-1 → ParseTreeT
  parsed-aws : ParseTreeT
  parsed-aws-bar-11 : ParseTreeT
  parsed-aws-bar-12 : ParseTreeT
  parsed-ows : ParseTreeT
  parsed-ows-star-14 : ParseTreeT
  parsed-ws : ParseTreeT
  parsed-ws-plus-13 : ParseTreeT

------------------------------------------
-- Parse tree printing functions
------------------------------------------

posinfoToString : posinfo → string
posinfoToString x = "(posinfo " ^ x ^ ")"
numToString : num → string
numToString x = "(num " ^ x ^ ")"
num-plus-4ToString : num-plus-4 → string
num-plus-4ToString x = "(num-plus-4 " ^ x ^ ")"
num-range-3ToString : num-range-3 → string
num-range-3ToString x = "(num-range-3 " ^ x ^ ")"
phraseToString : phrase → string
phraseToString x = "(phrase " ^ x ^ ")"
phrase-bar-8ToString : phrase-bar-8 → string
phrase-bar-8ToString x = "(phrase-bar-8 " ^ x ^ ")"
phrase-bar-9ToString : phrase-bar-9 → string
phrase-bar-9ToString x = "(phrase-bar-9 " ^ x ^ ")"
phrase-plus-10ToString : phrase-plus-10 → string
phrase-plus-10ToString x = "(phrase-plus-10 " ^ x ^ ")"
sentenceToString : sentence → string
sentenceToString x = "(sentence " ^ x ^ ")"
sepToString : sep → string
sepToString x = "(sep " ^ x ^ ")"
sep-bar-5ToString : sep-bar-5 → string
sep-bar-5ToString x = "(sep-bar-5 " ^ x ^ ")"
sep-bar-6ToString : sep-bar-6 → string
sep-bar-6ToString x = "(sep-bar-6 " ^ x ^ ")"
sep-bar-7ToString : sep-bar-7 → string
sep-bar-7ToString x = "(sep-bar-7 " ^ x ^ ")"
spToString : sp → string
spToString x = "(sp " ^ x ^ ")"
wordToString : word → string
wordToString x = "(word " ^ x ^ ")"
word-plus-2ToString : word-plus-2 → string
word-plus-2ToString x = "(word-plus-2 " ^ x ^ ")"
word-range-1ToString : word-range-1 → string
word-range-1ToString x = "(word-range-1 " ^ x ^ ")"

mutual
  abstraToString : abstra → string
  abstraToString (Abstract) = "Abstract" ^ ""
  abstraToString (NoAbstract) = "NoAbstract" ^ ""

  classToString : class → string
  classToString (Class x0 x1 x2 x3 x4 x5 x6) = "(Class" ^ " " ^ (commentToString x0) ^ " " ^ (abstraToString x1) ^ " " ^ (encapToString x2) ^ " " ^ (statusToString x3) ^ " " ^ (classNameToString x4) ^ " " ^ (constructToString x5) ^ " " ^ (methodsToString x6) ^ ")"

  classNameToString : className → string
  classNameToString (ClassName x0) = "(ClassName" ^ " " ^ (wordToString x0) ^ ")"

  commentToString : comment → string
  commentToString (Comment x0 x1) = "(Comment" ^ " " ^ (detailToString x0) ^ " " ^ (descriptionsToString x1) ^ ")"

  constructToString : construct → string
  constructToString (ConstructNil) = "ConstructNil" ^ ""
  constructToString (Constructor x0 x1 x2 x3) = "(Constructor" ^ " " ^ (commentToString x0) ^ " " ^ (encapToString x1) ^ " " ^ (classNameToString x2) ^ " " ^ (parameterToString x3) ^ ")"

  descriptionToString : description → string
  descriptionToString (Author x0) = "(Author" ^ " " ^ (sentenceToString x0) ^ ")"
  descriptionToString (DescrSingl x0) = "(DescrSingl" ^ " " ^ (sentenceToString x0) ^ ")"
  descriptionToString (Emptycom) = "Emptycom" ^ ""
  descriptionToString (Param x0 x1) = "(Param" ^ " " ^ (typeToString x0) ^ " " ^ (detailToString x1) ^ ")"
  descriptionToString (Return x0 x1) = "(Return" ^ " " ^ (typeToString x0) ^ " " ^ (detailToString x1) ^ ")"
  descriptionToString (See x0) = "(See" ^ " " ^ (typeToString x0) ^ ")"
  descriptionToString (Version x0) = "(Version" ^ " " ^ (sentenceToString x0) ^ ")"

  descriptionsToString : descriptions → string
  descriptionsToString (DescrMulti x0 x1) = "(DescrMulti" ^ " " ^ (descriptionToString x0) ^ " " ^ (descriptionsToString x1) ^ ")"
  descriptionsToString (DescriNil) = "DescriNil" ^ ""

  detailToString : detail → string
  detailToString (Detail x0) = "(Detail" ^ " " ^ (sentenceToString x0) ^ ")"
  detailToString (DetailNil) = "DetailNil" ^ ""

  encapToString : encap → string
  encapToString (NoEncap) = "NoEncap" ^ ""
  encapToString (Private) = "Private" ^ ""
  encapToString (Protected) = "Protected" ^ ""
  encapToString (Public) = "Public" ^ ""

  impToString : imp → string
  impToString (Imp x0) = "(Imp" ^ " " ^ (sentenceToString x0) ^ ")"

  importsToString : imports → string
  importsToString (ImportCons x0 x1) = "(ImportCons" ^ " " ^ (impToString x0) ^ " " ^ (importsToString x1) ^ ")"
  importsToString (ImportNil) = "ImportNil" ^ ""

  methodToString : method → string
  methodToString (Method x0 x1 x2 x3 x4 x5) = "(Method" ^ " " ^ (commentToString x0) ^ " " ^ (abstraToString x1) ^ " " ^ (encapToString x2) ^ " " ^ (typeToString x3) ^ " " ^ (methodNameToString x4) ^ " " ^ (parameterToString x5) ^ ")"

  methodNameToString : methodName → string
  methodNameToString (MethodName x0) = "(MethodName" ^ " " ^ (wordToString x0) ^ ")"

  methodsToString : methods → string
  methodsToString (MethodNil) = "MethodNil" ^ ""
  methodsToString (Methods x0 x1) = "(Methods" ^ " " ^ (methodToString x0) ^ " " ^ (methodsToString x1) ^ ")"

  packageToString : package → string
  packageToString (Package x0) = "(Package" ^ " " ^ (wordToString x0) ^ ")"
  packageToString (PackageNil) = "PackageNil" ^ ""

  parameterToString : parameter → string
  parameterToString (NoParameter) = "NoParameter" ^ ""
  parameterToString (Parameter x0 x1) = "(Parameter" ^ " " ^ (typeToString x0) ^ " " ^ (wordToString x1) ^ ")"

  statusToString : status → string
  statusToString (Final) = "Final" ^ ""
  statusToString (NoStatus) = "NoStatus" ^ ""
  statusToString (Static) = "Static" ^ ""

  strtToString : strt → string
  strtToString (Strt x0 x1 x2) = "(Strt" ^ " " ^ (packageToString x0) ^ " " ^ (importsToString x1) ^ " " ^ (classToString x2) ^ ")"

  typeToString : type → string
  typeToString (ReturnType x0) = "(ReturnType" ^ " " ^ (wordToString x0) ^ ")"
  typeToString (VoidType) = "VoidType" ^ ""

ParseTreeToString : ParseTreeT → string
ParseTreeToString (parsed-abstra t) = abstraToString t
ParseTreeToString (parsed-class t) = classToString t
ParseTreeToString (parsed-className t) = classNameToString t
ParseTreeToString (parsed-comment t) = commentToString t
ParseTreeToString (parsed-construct t) = constructToString t
ParseTreeToString (parsed-description t) = descriptionToString t
ParseTreeToString (parsed-descriptions t) = descriptionsToString t
ParseTreeToString (parsed-detail t) = detailToString t
ParseTreeToString (parsed-encap t) = encapToString t
ParseTreeToString (parsed-imp t) = impToString t
ParseTreeToString (parsed-imports t) = importsToString t
ParseTreeToString (parsed-method t) = methodToString t
ParseTreeToString (parsed-methodName t) = methodNameToString t
ParseTreeToString (parsed-methods t) = methodsToString t
ParseTreeToString (parsed-package t) = packageToString t
ParseTreeToString (parsed-parameter t) = parameterToString t
ParseTreeToString (parsed-status t) = statusToString t
ParseTreeToString (parsed-strt t) = strtToString t
ParseTreeToString (parsed-type t) = typeToString t
ParseTreeToString (parsed-posinfo t) = posinfoToString t
ParseTreeToString (parsed-num t) = numToString t
ParseTreeToString (parsed-num-plus-4 t) = num-plus-4ToString t
ParseTreeToString (parsed-num-range-3 t) = num-range-3ToString t
ParseTreeToString (parsed-phrase t) = phraseToString t
ParseTreeToString (parsed-phrase-bar-8 t) = phrase-bar-8ToString t
ParseTreeToString (parsed-phrase-bar-9 t) = phrase-bar-9ToString t
ParseTreeToString (parsed-phrase-plus-10 t) = phrase-plus-10ToString t
ParseTreeToString (parsed-sentence t) = sentenceToString t
ParseTreeToString (parsed-sep t) = sepToString t
ParseTreeToString (parsed-sep-bar-5 t) = sep-bar-5ToString t
ParseTreeToString (parsed-sep-bar-6 t) = sep-bar-6ToString t
ParseTreeToString (parsed-sep-bar-7 t) = sep-bar-7ToString t
ParseTreeToString (parsed-sp t) = spToString t
ParseTreeToString (parsed-word t) = wordToString t
ParseTreeToString (parsed-word-plus-2 t) = word-plus-2ToString t
ParseTreeToString (parsed-word-range-1 t) = word-range-1ToString t
ParseTreeToString parsed-aws = "[aws]"
ParseTreeToString parsed-aws-bar-11 = "[aws-bar-11]"
ParseTreeToString parsed-aws-bar-12 = "[aws-bar-12]"
ParseTreeToString parsed-ows = "[ows]"
ParseTreeToString parsed-ows-star-14 = "[ows-star-14]"
ParseTreeToString parsed-ws = "[ws]"
ParseTreeToString parsed-ws-plus-13 = "[ws-plus-13]"

------------------------------------------
-- Reorganizing rules
------------------------------------------

mutual

  {-# TERMINATING #-}
  norm-type : (x : type) → type
  norm-type x = x

  {-# TERMINATING #-}
  norm-strt : (x : strt) → strt
  norm-strt x = x

  {-# TERMINATING #-}
  norm-status : (x : status) → status
  norm-status x = x

  {-# TERMINATING #-}
  norm-posinfo : (x : posinfo) → posinfo
  norm-posinfo x = x

  {-# TERMINATING #-}
  norm-parameter : (x : parameter) → parameter
  norm-parameter x = x

  {-# TERMINATING #-}
  norm-package : (x : package) → package
  norm-package x = x

  {-# TERMINATING #-}
  norm-methods : (x : methods) → methods
  norm-methods x = x

  {-# TERMINATING #-}
  norm-methodName : (x : methodName) → methodName
  norm-methodName x = x

  {-# TERMINATING #-}
  norm-method : (x : method) → method
  norm-method x = x

  {-# TERMINATING #-}
  norm-imports : (x : imports) → imports
  norm-imports x = x

  {-# TERMINATING #-}
  norm-imp : (x : imp) → imp
  norm-imp x = x

  {-# TERMINATING #-}
  norm-encap : (x : encap) → encap
  norm-encap x = x

  {-# TERMINATING #-}
  norm-detail : (x : detail) → detail
  norm-detail x = x

  {-# TERMINATING #-}
  norm-descriptions : (x : descriptions) → descriptions
  norm-descriptions x = x

  {-# TERMINATING #-}
  norm-description : (x : description) → description
  norm-description x = x

  {-# TERMINATING #-}
  norm-construct : (x : construct) → construct
  norm-construct x = x

  {-# TERMINATING #-}
  norm-comment : (x : comment) → comment
  norm-comment x = x

  {-# TERMINATING #-}
  norm-className : (x : className) → className
  norm-className x = x

  {-# TERMINATING #-}
  norm-class : (x : class) → class
  norm-class x = x

  {-# TERMINATING #-}
  norm-abstra : (x : abstra) → abstra
  norm-abstra x = x

isParseTree : ParseTreeT → 𝕃 char → string → Set
isParseTree p l s = ⊤ {- this will be ignored since we are using simply typed runs -}

ptr : ParseTreeRec
ptr = record { ParseTreeT = ParseTreeT ; isParseTree = isParseTree ; ParseTreeToString = ParseTreeToString }

