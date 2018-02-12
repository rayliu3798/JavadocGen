open import lib

stylesheet : string
stylesheet = "
/* Javadoc style sheet */\n
/*\n
Overall document style\n
*/\n

@import url(\'resources/fonts/dejavu.css\');\n

body {\n
    background-color:#ffffff;\n
    color:#353833;\n
    font-family:\'DejaVu Sans\', Arial, Helvetica, sans-serif;\n
    font-size:14px;\n
    margin:0;\n
}\n
a:link, a:visited {\n
    text-decoration:none;\n
    color:#4A6782;\n
}\n
a:hover, a:focus {\n
    text-decoration:none;\n
    color:#bb7a2a;\n
}\n
a:active {\n
    text-decoration:none;\n
    color:#4A6782;\n
}\n
a[name] {\n
    color:#353833;\n
}\n
a[name]:hover {\n
    text-decoration:none;\n
    color:#353833;\n
}\n
pre {\n
    font-family:\'DejaVu Sans Mono\', monospace;\n
    font-size:14px;\n
}\n
h1 {\n
    font-size:20px;\n
}\n
h2 {\n
    font-size:18px;\n
}\n
h3 {\n
    font-size:16px;\n
    font-style:italic;\n
}\n
h4 {\n
    font-size:13px;\n
}\n
h5 {\n
    font-size:12px;\n
}\n
h6 {\n
    font-size:11px;\n
}\n
ul {\n
    list-style-type:disc;\n
}\n
code, tt {\n
    font-family:\'DejaVu Sans Mono\', monospace;\n
    font-size:14px;\n
    padding-top:4px;\n
    margin-top:8px;\n
    line-height:1.4em;\n
}\n
dt code {\n
    font-family:\'DejaVu Sans Mono\', monospace;\n
    font-size:14px;\n
    padding-top:4px;\n
}\n
table tr td dt code {\n
    font-family:\'DejaVu Sans Mono\', monospace;\n
    font-size:14px;\n
    vertical-align:top;\n
    padding-top:4px;\n
}\n
sup {\n
    font-size:8px;\n
}\n
/*\n
Document title and Copyright styles\n
*/\n
.clear {\n
    clear:both;\n
    height:0px;\n
    overflow:hidden;\n
}\n
.aboutLanguage {\n
    float:right;\n
    padding:0px 21px;\n
    font-size:11px;\n
    z-index:200;\n
    margin-top:-9px;\n
}\n
.legalCopy {\n
    margin-left:.5em;\n
}\n
.bar a, .bar a:link, .bar a:visited, .bar a:active {\n
    color:#FFFFFF;\n
    text-decoration:none;\n
}\n
.bar a:hover, .bar a:focus {\n
    color:#bb7a2a;\n
}\n
.tab {\n
    background-color:#0066FF;\n
    color:#ffffff;\n
    padding:8px;\n
    width:5em;\n
    font-weight:bold;\n
}\n
/*\n
Navigation bar styles\n
*/\n
.bar {\n
    background-color:#4D7A97;\n
    color:#FFFFFF;\n
    padding:.8em .5em .4em .8em;\n
    height:auto;/*height:1.8em;*/\n
    font-size:11px;\n
    margin:0;\n
}\n
.topNav {\n
    background-color:#4D7A97;\n
    color:#FFFFFF;\n
    float:left;\n
    padding:0;\n
    width:100%;\n
    clear:right;\n
    height:2.8em;\n
    padding-top:10px;\n
    overflow:hidden;\n
    font-size:12px; \n
}\n
.bottomNav {\n
    margin-top:10px;\n
    background-color:#4D7A97;\n
    color:#FFFFFF;\n
    float:left;\n
    padding:0;\n
    width:100%;\n
    clear:right;\n
    height:2.8em;\n
    padding-top:10px;\n
    overflow:hidden;\n
    font-size:12px;\n
}\n
.subNav {\n
    background-color:#dee3e9;\n
    float:left;\n
    width:100%;\n
    overflow:hidden;\n
    font-size:12px;\n
}\n
.subNav div {\n
    clear:left;\n
    float:left;\n
    padding:0 0 5px 6px;\n
    text-transform:uppercase;\n
}\n
ul.navList, ul.subNavList {\n
    float:left;\n
    margin:0 25px 0 0;\n
    padding:0;\n
}\n
ul.navList li{\n
    list-style:none;\n
    float:left;\n
    padding: 5px 6px;\n
    text-transform:uppercase;\n
}\n
ul.subNavList li{\n
    list-style:none;\n
    float:left;\n
}\n
.topNav a:link, .topNav a:active, .topNav a:visited, .bottomNav a:link, .bottomNav a:active, .bottomNav a:visited {\n
    color:#FFFFFF;\n
    text-decoration:none;\n
    text-transform:uppercase;\n
}\n
.topNav a:hover, .bottomNav a:hover {\n
    text-decoration:none;\n
    color:#bb7a2a;\n
    text-transform:uppercase;\n
}\n
.navBarCell1Rev {\n
    background-color:#F8981D;\n
    color:#253441;\n
    margin: auto 5px;\n
}\n
.skipNav {\n
    position:absolute;\n
    top:auto;\n
    left:-9999px;\n
    overflow:hidden;\n
}\n
/*\n
Page header and footer styles\n
*/\n
.header, .footer {\n
    clear:both;\n
    margin:0 20px;\n
    padding:5px 0 0 0;\n
}\n
.indexHeader {\n
    margin:10px;\n
    position:relative;\n
}\n
.indexHeader span{\n
    margin-right:15px;\n
}\n
.indexHeader h1 {\n
    font-size:13px;\n
}\n
.title {\n
    color:#2c4557;\n
    margin:10px 0;\n
}\n
.subTitle {\n
    margin:5px 0 0 0;\n
}\n
.header ul {\n
    margin:0 0 15px 0;\n
    padding:0;\n
}\n
.footer ul {\n
    margin:20px 0 5px 0;\n
}\n
.header ul li, .footer ul li {\n
    list-style:none;\n
    font-size:13px;\n
}\n
/*\n
Heading styles\n
*/\n
div.details ul.blockList ul.blockList ul.blockList li.blockList h4, div.details ul.blockList ul.blockList ul.blockListLast li.blockList h4 {\n
    background-color:#dee3e9;\n
    border:1px solid #d0d9e0;\n
    margin:0 0 6px -8px;\n
    padding:7px 5px;\n
}\n
ul.blockList ul.blockList ul.blockList li.blockList h3 {\n
    background-color:#dee3e9;\n
    border:1px solid #d0d9e0;\n
    margin:0 0 6px -8px;\n
    padding:7px 5px;\n
}\n
ul.blockList ul.blockList li.blockList h3 {\n
    padding:0;\n
    margin:15px 0;\n
}\n
ul.blockList li.blockList h2 {\n
    padding:0px 0 20px 0;\n
}\n
/*\n
Page layout container styles\n
*/\n
.contentContainer, .sourceContainer, .classUseContainer, .serializedFormContainer, .constantValuesContainer {\n
    clear:both;\n
    padding:10px 20px;\n
    position:relative;\n
}\n
.indexContainer {\n
    margin:10px;\n
    position:relative;\n
    font-size:12px;\n
}\n
.indexContainer h2 {\n
    font-size:13px;\n
    padding:0 0 3px 0;\n
}\n
.indexContainer ul {\n
    margin:0;\n
    padding:0;\n
}\n
.indexContainer ul li {\n
    list-style:none;\n
    padding-top:2px;\n
}\n
.contentContainer .description dl dt, .contentContainer .details dl dt, .serializedFormContainer dl dt {\n
    font-size:12px;\n
    font-weight:bold;\n
    margin:10px 0 0 0;\n
    color:#4E4E4E;\n
}\n
.contentContainer .description dl dd, .contentContainer .details dl dd, .serializedFormContainer dl dd {\n
    margin:5px 0 10px 0px;\n
    font-size:14px;\n
    font-family:\'DejaVu Sans Mono\',monospace;\n
}\n
.serializedFormContainer dl.nameValue dt {\n
    margin-left:1px;\n
    font-size:1.1em;\n
    display:inline;\n
    font-weight:bold;\n
}\n
.serializedFormContainer dl.nameValue dd {\n
    margin:0 0 0 1px;\n
    font-size:1.1em;\n
    display:inline;\n
}\n
/*\n
List styles\n
*/\n
ul.horizontal li {\n
    display:inline;\n
    font-size:0.9em;\n
}\n
ul.inheritance {\n
    margin:0;\n
    padding:0;\n
}\n
ul.inheritance li {\n
    display:inline;\n
    list-style:none;\n
}\n
ul.inheritance li ul.inheritance {\n
    margin-left:15px;\n
    padding-left:15px;\n
    padding-top:1px;\n
}\n
ul.blockList, ul.blockListLast {\n
    margin:10px 0 10px 0;\n
    padding:0;\n
}\n
ul.blockList li.blockList, ul.blockListLast li.blockList {\n
    list-style:none;\n
    margin-bottom:15px;\n
    line-height:1.4;\n
}\n
ul.blockList ul.blockList li.blockList, ul.blockList ul.blockListLast li.blockList {\n
    padding:0px 20px 5px 10px;\n
    border:1px solid #ededed; \n
    background-color:#f8f8f8;\n
}\n
ul.blockList ul.blockList ul.blockList li.blockList, ul.blockList ul.blockList ul.blockListLast li.blockList {\n
    padding:0 0 5px 8px;\n
    background-color:#ffffff;\n
    border:none;\n
}\n
ul.blockList ul.blockList ul.blockList ul.blockList li.blockList {\n
    margin-left:0;\n
    padding-left:0;\n
    padding-bottom:15px;\n
    border:none;\n
}\n
ul.blockList ul.blockList ul.blockList ul.blockList li.blockListLast {\n
    list-style:none;\n
    border-bottom:none;\n
    padding-bottom:0;\n
}\n
table tr td dl, table tr td dl dt, table tr td dl dd {\n
    margin-top:0;\n
    margin-bottom:1px;\n
}\n
/*\n
Table styles\n
*/\n
.overviewSummary, .memberSummary, .typeSummary, .useSummary, .constantsSummary, .deprecatedSummary {\n
    width:100%;\n
    border-left:1px solid #EEE; \n
    border-right:1px solid #EEE; \n
    border-bottom:1px solid #EEE;\n 
}\n
.overviewSummary, .memberSummary  {\n
    padding:0px;\n
}\n
.overviewSummary caption, .memberSummary caption, .typeSummary caption,\n
.useSummary caption, .constantsSummary caption, .deprecatedSummary caption {\n
    position:relative;\n
    text-align:left;\n
    background-repeat:no-repeat;\n
    color:#253441;\n
    font-weight:bold;\n
    clear:none;\n
    overflow:hidden;\n
    padding:0px;\n
    padding-top:10px;\n
    padding-left:1px;\n
    margin:0px;\n
    white-space:pre;\n
}\n
.overviewSummary caption a:link, .memberSummary caption a:link, .typeSummary caption a:link,\n
.useSummary caption a:link, .constantsSummary caption a:link, .deprecatedSummary caption a:link,\n
.overviewSummary caption a:hover, .memberSummary caption a:hover, .typeSummary caption a:hover,\n
.useSummary caption a:hover, .constantsSummary caption a:hover, .deprecatedSummary caption a:hover,\n
.overviewSummary caption a:active, .memberSummary caption a:active, .typeSummary caption a:active,\n
.useSummary caption a:active, .constantsSummary caption a:active, .deprecatedSummary caption a:active,\n
.overviewSummary caption a:visited, .memberSummary caption a:visited, .typeSummary caption a:visited,\n
.useSummary caption a:visited, .constantsSummary caption a:visited, .deprecatedSummary caption a:visited {\n
    color:#FFFFFF;\n
}\n
.overviewSummary caption span, .memberSummary caption span, .typeSummary caption span,\n
.useSummary caption span, .constantsSummary caption span, .deprecatedSummary caption span {\n
    white-space:nowrap;\n
    padding-top:5px;\n
    padding-left:12px;\n
    padding-right:12px;\n
    padding-bottom:7px;\n
    display:inline-block;\n
    float:left;\n
    background-color:#F8981D;\n
    border: none;\n
    height:16px;\n
}\n
.memberSummary caption span.activeTableTab span {\n
    white-space:nowrap;\n
    padding-top:5px;\n
    padding-left:12px;\n
    padding-right:12px;\n
    margin-right:3px;\n
    display:inline-block;\n
    float:left;\n
    background-color:#F8981D;\n
    height:16px;\n
}\n
.memberSummary caption span.tableTab span {\n
    white-space:nowrap;\n
    padding-top:5px;\n
    padding-left:12px;\n
    padding-right:12px;\n
    margin-right:3px;\n
    display:inline-block;\n
    float:left;\n
    background-color:#4D7A97;\n
    height:16px;\n
}\n
.memberSummary caption span.tableTab, .memberSummary caption span.activeTableTab {\n
    padding-top:0px;\n
    padding-left:0px;\n
    padding-right:0px;\n
    background-image:none;\n
    float:none;\n
    display:inline;\n
}\n
.overviewSummary .tabEnd, .memberSummary .tabEnd, .typeSummary .tabEnd,\n
.useSummary .tabEnd, .constantsSummary .tabEnd, .deprecatedSummary .tabEnd {\n
    display:none;\n
    width:5px;\n
    position:relative;\n
    float:left;\n
    background-color:#F8981D;\n
}\n
.memberSummary .activeTableTab .tabEnd {\n
    display:none;\n
    width:5px;\n
    margin-right:3px;\n
    position:relative; \n
    float:left;\n
    background-color:#F8981D;\n
}\n
.memberSummary .tableTab .tabEnd {\n
    display:none;\n
    width:5px;\n
    margin-right:3px;\n
    position:relative;\n
    background-color:#4D7A97;\n
    float:left;\n

}\n
.overviewSummary td, .memberSummary td, .typeSummary td,\n
.useSummary td, .constantsSummary td, .deprecatedSummary td {\n
    text-align:left;\n
    padding:0px 0px 12px 10px;\n
}\n
th.colOne, th.colFirst, th.colLast, .useSummary th, .constantsSummary th,\n
td.colOne, td.colFirst, td.colLast, .useSummary td, .constantsSummary td{\n
    vertical-align:top;\n
    padding-right:0px;\n
    padding-top:8px;\n
    padding-bottom:3px;\n
}\n
th.colFirst, th.colLast, th.colOne, .constantsSummary th {\n
    background:#dee3e9;\n
    text-align:left;\n
    padding:8px 3px 3px 7px;\n
}\n
td.colFirst, th.colFirst {\n
    white-space:nowrap;\n
    font-size:13px;\n
}\n
td.colLast, th.colLast {\n
    font-size:13px;\n
}\n
td.colOne, th.colOne {\n
    font-size:13px;\n
}\n
.overviewSummary td.colFirst, .overviewSummary th.colFirst,\n
.useSummary td.colFirst, .useSummary th.colFirst,\n
.overviewSummary td.colOne, .overviewSummary th.colOne,\n
.memberSummary td.colFirst, .memberSummary th.colFirst,\n
.memberSummary td.colOne, .memberSummary th.colOne,\n
.typeSummary td.colFirst{\n
    width:25%;\n
    vertical-align:top;\n
}\n
td.colOne a:link, td.colOne a:active, td.colOne a:visited, td.colOne a:hover, td.colFirst a:link, td.colFirst a:active, td.colFirst a:visited, td.colFirst a:hover, td.colLast a:link, td.colLast a:active, td.colLast a:visited, td.colLast a:hover, .constantValuesContainer td a:link, .constantValuesContainer td a:active, .constantValuesContainer td a:visited, .constantValuesContainer td a:hover {\n
    font-weight:bold;\n
}\n
.tableSubHeadingColor {\n
    background-color:#EEEEFF;\n
}\n
.altColor {\n
    background-color:#FFFFFF;\n
}\n
.rowColor {\n
    background-color:#EEEEEF;\n
}\n
/*\n
Content styles\n
*/\n
.description pre {\n
    margin-top:0;\n
}\n
.deprecatedContent {\n
    margin:0;\n
    padding:10px 0;\n
}\n
.docSummary {\n
    padding:0;\n
}\n

ul.blockList ul.blockList ul.blockList li.blockList h3 {\n
    font-style:normal;\n
}\n

div.block {\n
    font-size:14px;\n
    font-family:\'DejaVu Serif\', Georgia, \"Times New Roman\", Times, serif;\n
}\n

td.colLast div {\n
    padding-top:0px;\n
}\n


td.colLast a {\n
    padding-bottom:3px;\n
}\n
/*\n
Formatting effect styles\n
*/\n
.sourceLineNo {\n
    color:green;\n
    padding:0 30px 0 0;\n
}\n
h1.hidden {\n
    visibility:hidden;\n
    overflow:hidden;\n
    font-size:10px;\n
}\n
.block {\n
    display:block;\n
    margin:3px 10px 2px 0px;\n
    color:#474747;\n
}\n
.deprecatedLabel, .descfrmTypeLabel, .memberNameLabel, .memberNameLink,\n
.overrideSpecifyLabel, .packageHierarchyLabel, .paramLabel, .returnLabel,\n
.seeLabel, .simpleTagLabel, .throwsLabel, .typeNameLabel, .typeNameLink {\n
    font-weight:bold;\n
}\n
.deprecationComment, .emphasizedPhrase, .interfaceName {\n
    font-style:italic;\n
}\n

div.block div.block span.deprecationComment, div.block div.block span.emphasizedPhrase,\n
div.block div.block span.interfaceName {\n
    font-style:normal;\n
}\n

div.contentContainer ul.blockList li.blockList h2{\n
    padding-bottom:0px;\n
}\n"
