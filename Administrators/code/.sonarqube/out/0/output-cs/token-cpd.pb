
OC:\Review Code\Maybank Blog\Administrators\code\Controller\SamplesController.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Library "
." #

Controller# -
{ 
public 

class 
SamplesController "
:# $

Controller% /
{ 
} 
} §
AC:\Review Code\Maybank Blog\Administrators\code\Models\Comment.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Models* 0
{ 
public 

class 
Comment 
{		 
public

 
int

 
ID

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
string 
Article 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
User 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Comment 
Parent 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Comment 
[ 
] 
Replies  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 

DatePosted "
{# $
get% (
;( )
set) ,
;, -
}. /
public 
bool 
IsRoot 
{ 
get  
;  !
set" %
;% &
}' (
public 
Comment 
( 
) 
{ 	
} 	
} 
} υ
JC:\Review Code\Maybank Blog\Administrators\code\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str :
): ;
]; <
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str <
)< =
]= >
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[%% 
assembly%% 	
:%%	 

AssemblyVersion%% 
(%% 
$str%% $
)%%$ %
]%%% &
[&& 
assembly&& 	
:&&	 

AssemblyFileVersion&& 
(&& 
$str&& (
)&&( )
]&&) *
iC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadATMBranchLocation.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 '
BulkUploadATMBranchLocation

 4
:

5 6
System

7 =
.

= >
Web

> A
.

A B
UI

B D
.

D E
Page

E I
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' ?
)? @
.@ A
VisibleA H
=I J
trueK O
;O P
} 	
} 
} ώ
`C:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadBusiness.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 
BulkUploadBusiness

 +
:

, -
System

. 4
.

4 5
Web

5 8
.

8 9
UI

9 ;
.

; <
Page

< @
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' 6
)6 7
.7 8
Visible8 ?
=@ A
trueB F
;F G
} 	
} 
} 
gC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadBusinessVoucher.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 %
BulkUploadBusinessVoucher

 2
:

3 4
System

5 ;
.

; <
Web

< ?
.

? @
UI

@ B
.

B C
Page

C G
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' >
)> ?
.? @
Visible@ G
=H I
trueJ N
;N O
} 	
} 
} ‚
bC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadCreditCard.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

  
BulkUploadCreditCard

 -
:

. /
System

0 6
.

6 7
Web

7 :
.

: ;
UI

; =
.

= >
Page

> B
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' 8
)8 9
.9 :
Visible: A
=B C
trueD H
;H I
} 	
} 
} 
iC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadCreditCardVoucher.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 '
BulkUploadCreditCardVoucher

 4
:

5 6
System

7 =
.

= >
Web

> A
.

A B
UI

B D
.

D E
Page

E I
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' @
)@ A
.A B
VisibleB I
=J K
trueL P
;P Q
} 	
} 
} τ
[C:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadKPM.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 
BulkUploadKPM

 &
:

' (
System

) /
.

/ 0
Web

0 3
.

3 4
UI

4 6
.

6 7
Page

7 ;
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' 1
)1 2
.2 3
Visible3 :
=; <
true= A
;A B
} 	
} 
} τ
[C:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadKPR.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 
BulkUploadKPR

 &
:

' (
System

) /
.

/ 0
Web

0 3
.

3 4
UI

4 6
.

6 7
Page

7 ;
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' 1
)1 2
.2 3
Visible3 :
=; <
true= A
;A B
} 	
} 
} „
cC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadLoanVoucher.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 !
BulkUploadLoanVoucher

 .
:

/ 0
System

1 7
.

7 8
Web

8 ;
.

; <
UI

< >
.

> ?
Page

? C
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' :
): ;
.; <
Visible< C
=D E
trueF J
;J K
} 	
} 
} ¦
tC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadMortgageMultifunctionVoucher.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 2
&BulkUploadMortgageMultifunctionVoucher

 ?
:

@ A
System

B H
.

H I
Web

I L
.

L M
UI

M O
.

O P
Page

P T
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' K
)K L
.L M
VisibleM T
=U V
trueW [
;[ \
} 	
} 
} 
eC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadSavingVoucher.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 #
BulkUploadSavingVoucher

 0
:

1 2
System

3 9
.

9 :
Web

: =
.

= >
UI

> @
.

@ A
Page

A E
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' <
)< =
.= >
Visible> E
=F G
trueH L
;L M
} 	
} 
} 
fC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadSyariahVoucher.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 $
BulkUploadSyariahVoucher

 1
:

2 3
System

4 :
.

: ;
Web

; >
.

> ?
UI

? A
.

A B
Page

B F
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' =
)= >
.> ?
Visible? F
=G H
trueI M
;M N
} 	
} 
} ό
_C:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUploadVoucher.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 
BulkUploadVoucher

 *
:

+ ,
System

- 3
.

3 4
Web

4 7
.

7 8
UI

8 :
.

: ;
Page

; ?
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' 9
)9 :
.: ;
Visible; B
=C D
trueE I
;I J
} 	
} 
} ÿ
WC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\Dashboard.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 
	Dashboard

 "
:

# $
System

% +
.

+ ,
Web

, /
.

/ 0
UI

0 2
.

2 3
Page

3 7
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
HiddenField 

currentTab "
=# $
(% &
HiddenField& 1
)1 2
this2 6
.6 7
FindControl7 B
(B C
$strC S
)S T
;T U
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *

currentTab* 4
.4 5
Value5 :
): ;
); <
{ 
string 
script 
= 
$@"  #I
=$(document).ready(function () {{ SetActiveTab('my-task') }});# `
"` a
;a b
Page 
. 
ClientScript !
.! "!
RegisterStartupScript" 7
(7 8
this8 <
.< =
GetType= D
(D E
)E F
,F G
$strH P
,P Q
scriptR X
,X Y
trueZ ^
)^ _
;_ `
} 
} 	
} 
} ¬
[C:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BlogDashboard.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 
BlogDashboard

 &
:

' (
System

) /
.

/ 0
Web

0 3
.

3 4
UI

4 6
.

6 7
Page

7 ;
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} ¬
[C:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\TestDashboard.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 
TestDashboard

 &
:

' (
System

) /
.

/ 0
Web

0 3
.

3 4
UI

4 6
.

6 7
Page

7 ;
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} †
XC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\Custom\BulkUpload.aspx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
Custom9 ?
{		 
public

 

partial

 
class

 

BulkUpload

 #
:

$ %
System

& ,
.

, -
Web

- 0
.

0 1
UI

1 3
.

3 4
Page

4 8
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
BulkUploadAlls 
. 
FindControl &
(& '
$str' ?
)? @
.@ A
VisibleA H
=I J
trueK O
;O P
BulkUploadAlls 
. 
FindControl &
(& '
$str' 6
)6 7
.7 8
Visible8 ?
=@ A
trueB F
;F G
BulkUploadAlls 
. 
FindControl &
(& '
$str' 1
)1 2
.2 3
Visible3 :
=; <
true= A
;A B
BulkUploadAlls 
. 
FindControl &
(& '
$str' 1
)1 2
.2 3
Visible3 :
=; <
true= A
;A B
BulkUploadAlls 
. 
FindControl &
(& '
$str' 8
)8 9
.9 :
Visible: A
=B C
trueD H
;H I
BulkUploadAlls 
. 
FindControl &
(& '
$str' >
)> ?
.? @
Visible@ G
=H I
trueJ N
;N O
BulkUploadAlls 
. 
FindControl &
(& '
$str' @
)@ A
.A B
VisibleB I
=J K
trueL P
;P Q
BulkUploadAlls 
. 
FindControl &
(& '
$str' :
): ;
.; <
Visible< C
=D E
trueF J
;J K
BulkUploadAlls 
. 
FindControl &
(& '
$str' K
)K L
.L M
VisibleM T
=U V
trueW [
;[ \
BulkUploadAlls 
. 
FindControl &
(& '
$str' <
)< =
.= >
Visible> E
=F G
trueH L
;L M
BulkUploadAlls 
. 
FindControl &
(& '
$str' =
)= >
.> ?
Visible? F
=G H
trueI M
;M N
BulkUploadAlls 
. 
FindControl &
(& '
$str' 4
)4 5
.5 6
Visible6 =
=> ?
true@ D
;D E
} 	
} 
} ζω
aC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\UserControl\DeletedComment.ascx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
UserControl9 D
{ 
public 

partial 
class 
DeletedComment '
:( )
System* 0
.0 1
Web1 4
.4 5
UI5 7
.7 8
UserControl8 C
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
try 
{ 
DisplayAllComment %
(% &
)& '
;' (
} 
catch 
( 
	Exception  
ex! #
)# $
{ 
Page 
. 
ClientScript %
.% &!
RegisterStartupScript& ;
(; <
this< @
.@ A
GetTypeA H
(H I
)I J
,J K
$strL U
,U V
$@"W Z<
/$(document).ready(function () {{ alert('Error: 	Z ‰
{
‰ 
ex
 
.
 
Message
 ”
}
” •
') }});
• 
"
 
,
 
true
 £
)
£ ¤
;
¤ ¥
} 
} 
} 	
public 
void 
DisplayAllComment %
(% &
bool& *
setTab+ 1
=2 3
false4 9
)9 :
{ 	
commentList   
.   

DataSource   "
=  # $
SearchComment  % 2
(  2 3
)  3 4
;  4 5
commentList!! 
.!! 
DataBind!!  
(!!  !
)!!! "
;!!" #
if## 
(## 
setTab## 
)## 
{$$ 
Page%% 
.%% 
ClientScript%% !
.%%! "!
RegisterStartupScript%%" 7
(%%7 8
this%%8 <
.%%< =
GetType%%= D
(%%D E
)%%E F
,%%F G
$str%%H S
,%%S T
$@"%%U XR
E$(document).ready(function () {{ SetActiveTab('deleted-comment') }});	%%X 
"
%% 
,
%% 
true
%%  ¤
)
%%¤ ¥
;
%%¥ ¦
}&& 
}'' 	
public)) 
void)) 
DisplayComment)) "
())" #
string))# )
keyword))* 1
=))2 3
$str))4 6
,))6 7
string))8 >
category))? G
=))H I
$str))J L
,))L M
string))N T
start))U Z
=))[ \
$str))] i
,))i j
string))k q
end))r u
=))v w
$str	))x „
,
))„ …
bool
))† 
setTab
))‹ ‘
=
))’ “
false
))” ™
)
))™ 
{** 	
if++ 
(++ 
setTab++ 
)++ 
{,, 
Page-- 
.-- 
ClientScript-- !
.--! "!
RegisterStartupScript--" 7
(--7 8
this--8 <
.--< =
GetType--= D
(--D E
)--E F
,--F G
$str--H S
,--S T
$@"--U XR
E$(document).ready(function () {{ SetActiveTab('deleted-comment') }});	--X 
"
-- 
,
-- 
true
--  ¤
)
--¤ ¥
;
--¥ ¦
}.. 
if00 
(00 
!00 
ValidateInput00 
(00 
keyword00 &
,00& '
category00( 0
,000 1
start002 7
,007 8
end009 <
)00< =
)00= >
{11 
Page22 
.22 
ClientScript22 !
.22! "!
RegisterStartupScript22" 7
(227 8
this228 <
.22< =
GetType22= D
(22D E
)22E F
,22F G
$str22H V
,22V W
$@"22X [z
m$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid options.'); }}, 1); }});	22[ Θ
"
22Θ Ι
,
22Ι Κ
true
22Λ Ο
)
22Ο Π
;
22Π Ρ
DisplayAllComment33 !
(33! "
false33" '
)33' (
;33( )
return44 
;44 
}55 
if77 
(77 
start77 
.77 
Trim77 
(77 
)77 
==77 
$str77  &
||77' )
start77* /
.77/ 0
Trim770 4
(774 5
)775 6
==777 9
$str77: <
)77< =
start77> C
=77D E
$str77F R
;77R S
if88 
(88 
end88 
.88 
Trim88 
(88 
)88 
==88 
$str88 "
||88# %
end88& )
.88) *
Trim88* .
(88. /
)88/ 0
==881 3
$str884 6
)886 7
end888 ;
=88< =
$str88> J
;88J K
Regex:: 
r:: 
=:: 
new:: 
Regex:: 
(::  
$str::  4
)::4 5
;::5 6
if;; 
(;; 
!;; 
r;; 
.;; 
IsMatch;; 
(;; 
start;; 
);;  
||;;! #
!;;$ %
r;;% &
.;;& '
IsMatch;;' .
(;;. /
end;;/ 2
);;2 3
);;3 4
{<< 
Page== 
.== 
ClientScript== !
.==! "!
RegisterStartupScript==" 7
(==7 8
this==8 <
.==< =
GetType=== D
(==D E
)==E F
,==F G
$str==H S
,==S T
$@"==U Xw
j$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid date.'); }}, 1); }});	==X Β
"
==Β Γ
,
==Γ Δ
true
==Ε Ι
)
==Ι Κ
;
==Κ Λ
return>> 
;>> 
}?? 
switchAA 
(AA 
categoryAA 
)AA 
{BB 
caseCC 
$strCC &
:CC& '
{DD 
commentListEE #
.EE# $

DataSourceEE$ .
=EE/ 0
SearchCommentByPageEE1 D
(EED E
keywordEEE L
,EEL M
categoryEEN V
,EEV W
startEEX ]
,EE] ^
endEE_ b
)EEb c
;EEc d
commentListFF #
.FF# $
DataBindFF$ ,
(FF, -
)FF- .
;FF. /
}GG 
;GG 
breakGG 
;GG 
caseHH 
$strHH 
:HH  
{II 
commentListJJ #
.JJ# $

DataSourceJJ$ .
=JJ/ 0#
SearchCommentByUsernameJJ1 H
(JJH I
keywordJJI P
,JJP Q
categoryJJR Z
,JJZ [
startJJ\ a
,JJa b
endJJc f
)JJf g
;JJg h
commentListKK #
.KK# $
DataBindKK$ ,
(KK, -
)KK- .
;KK. /
}LL 
;LL 
breakLL 
;LL 
caseMM 
$strMM 
:MM 
{NN 
commentListOO #
.OO# $

DataSourceOO$ .
=OO/ 0"
SearchCommentByContentOO1 G
(OOG H
keywordOOH O
,OOO P
categoryOOQ Y
,OOY Z
startOO[ `
,OO` a
endOOb e
)OOe f
;OOf g
commentListPP #
.PP# $
DataBindPP$ ,
(PP, -
)PP- .
;PP. /
}QQ 
;QQ 
breakQQ 
;QQ 
defaultRR 
:RR 
breakRR 
;RR 
}SS 
}TT 	
DataSetVV 
SearchCommentVV 
(VV 
stringVV $
startVV% *
=VV+ ,
$strVV- 9
,VV9 :
stringVV; A
endVVB E
=VVF G
$strVVH T
,VVT U
intVVV Y
	isApproveVVZ c
=VVd e
$numVVf g
,VVg h
intVVi l
orderByApprovalVVm |
=VV} ~
$num	VV €
)
VV€ 
{WW 	
DataSetXX 
datasetXX 
=XX 
newXX !
DataSetXX" )
(XX) *
)XX* +
;XX+ ,
usingYY 
(YY 
SqlConnectionYY  
connYY! %
=YY& '
newYY( +
SqlConnectionYY, 9
(YY9 :
newYY: =
ConfigYY> D
(YYD E
)YYE F
.YYF G
ConectionStringYYG V
)YYV W
)YYW X
{ZZ 

SqlCommand[[ 
cmd[[ 
=[[  
new[[! $

SqlCommand[[% /
([[/ 0
$str[[0 I
,[[I J
conn[[K O
)[[O P
;[[P Q
cmd\\ 
.\\ 
CommandType\\ 
=\\  !
CommandType\\" -
.\\- .
StoredProcedure\\. =
;\\= >
SqlParameter]] 
param]] "
=]]# $
cmd]]% (
.]]( )

Parameters]]) 3
.]]3 4
AddWithValue]]4 @
(]]@ A
$str]]A K
,]]K L
$str]]M O
)]]O P
;]]P Q
SqlParameter^^ 
param2^^ #
=^^$ %
cmd^^& )
.^^) *

Parameters^^* 4
.^^4 5
AddWithValue^^5 A
(^^A B
$str^^B M
,^^M N
$str^^O Q
)^^Q R
;^^R S
SqlParameter__ 
param3__ #
=__$ %
cmd__& )
.__) *

Parameters__* 4
.__4 5
AddWithValue__5 A
(__A B
$str__B J
,__J K
start__L Q
+__R S
$str__T _
)___ `
;__` a
SqlParameter`` 
param4`` #
=``$ %
cmd``& )
.``) *

Parameters``* 4
.``4 5
AddWithValue``5 A
(``A B
$str``B H
,``H I
end``J M
+``N O
$str``P [
)``[ \
;``\ ]
SqlDataAdapteraa 
dataAdapteraa *
=aa+ ,
newaa- 0
SqlDataAdapteraa1 ?
(aa? @
cmdaa@ C
)aaC D
;aaD E
dataAdapterbb 
.bb 
Fillbb  
(bb  !
datasetbb! (
,bb( )
$strbb* 2
)bb2 3
;bb3 4
}cc 
returnee 
datasetee 
;ee 
}ff 	
DataSethh 
SearchCommentByPagehh #
(hh# $
stringhh$ *
keywordhh+ 2
=hh3 4
$strhh5 7
,hh7 8
stringhh9 ?
categoryhh@ H
=hhI J
$strhhK M
,hhM N
stringhhO U
starthhV [
=hh\ ]
$strhh^ j
,hhj k
stringhhl r
endhhs v
=hhw x
$str	hhy …
)
hh… †
{ii 	
DataSetjj 
datasetjj 
=jj 
newjj !
DataSetjj" )
(jj) *
)jj* +
;jj+ ,
usingkk 
(kk 
SqlConnectionkk  
connkk! %
=kk& '
newkk( +
SqlConnectionkk, 9
(kk9 :
newkk: =
Configkk> D
(kkD E
)kkE F
.kkF G
ConectionStringkkG V
)kkV W
)kkW X
{ll 

SqlCommandmm 
cmdmm 
=mm  
newmm! $

SqlCommandmm% /
(mm/ 0
$strmm0 I
,mmI J
connmmK O
)mmO P
;mmP Q
cmdnn 
.nn 
CommandTypenn 
=nn  !
CommandTypenn" -
.nn- .
StoredProcedurenn. =
;nn= >
SqlParameteroo 
paramoo "
=oo# $
cmdoo% (
.oo( )

Parametersoo) 3
.oo3 4
AddWithValueoo4 @
(oo@ A
$strooA K
,ooK L
keywordooM T
)ooT U
;ooU V
SqlParameterpp 
param2pp #
=pp$ %
cmdpp& )
.pp) *

Parameterspp* 4
.pp4 5
AddWithValuepp5 A
(ppA B
$strppB M
,ppM N
categoryppO W
)ppW X
;ppX Y
SqlParameterqq 
param3qq #
=qq$ %
cmdqq& )
.qq) *

Parametersqq* 4
.qq4 5
AddWithValueqq5 A
(qqA B
$strqqB J
,qqJ K
startqqL Q
+qqR S
$strqqT _
)qq_ `
;qq` a
SqlParameterrr 
param4rr #
=rr$ %
cmdrr& )
.rr) *

Parametersrr* 4
.rr4 5
AddWithValuerr5 A
(rrA B
$strrrB H
,rrH I
endrrJ M
+rrN O
$strrrP [
)rr[ \
;rr\ ]
SqlDataAdapterss 
dataAdapterss *
=ss+ ,
newss- 0
SqlDataAdapterss1 ?
(ss? @
cmdss@ C
)ssC D
;ssD E
dataAdaptertt 
.tt 
Filltt  
(tt  !
datasettt! (
,tt( )
$strtt* 2
)tt2 3
;tt3 4
}uu 
returnww 
datasetww 
;ww 
}xx 	
DataSetzz #
SearchCommentByUsernamezz '
(zz' (
stringzz( .
keywordzz/ 6
=zz7 8
$strzz9 ;
,zz; <
stringzz= C
categoryzzD L
=zzM N
$strzzO Q
,zzQ R
stringzzS Y
startzzZ _
=zz` a
$strzzb n
,zzn o
stringzzp v
endzzw z
=zz{ |
$str	zz} ‰
)
zz‰ 
{{{ 	
DataSet|| 
dataset|| 
=|| 
new|| !
DataSet||" )
(||) *
)||* +
;||+ ,
using}} 
(}} 
SqlConnection}}  
conn}}! %
=}}& '
new}}( +
SqlConnection}}, 9
(}}9 :
new}}: =
Config}}> D
(}}D E
)}}E F
.}}F G
ConectionString}}G V
)}}V W
)}}W X
{~~ 

SqlCommand 
cmd 
=  
new! $

SqlCommand% /
(/ 0
$str0 I
,I J
connK O
)O P
;P Q
cmd
€€ 
.
€€ 
CommandType
€€ 
=
€€  !
CommandType
€€" -
.
€€- .
StoredProcedure
€€. =
;
€€= >
SqlParameter
 
param
 "
=
# $
cmd
% (
.
( )

Parameters
) 3
.
3 4
AddWithValue
4 @
(
@ A
$str
A K
,
K L
keyword
M T
)
T U
;
U V
SqlParameter
‚‚ 
param2
‚‚ #
=
‚‚$ %
cmd
‚‚& )
.
‚‚) *

Parameters
‚‚* 4
.
‚‚4 5
AddWithValue
‚‚5 A
(
‚‚A B
$str
‚‚B M
,
‚‚M N
category
‚‚O W
)
‚‚W X
;
‚‚X Y
SqlParameter
ƒƒ 
param3
ƒƒ #
=
ƒƒ$ %
cmd
ƒƒ& )
.
ƒƒ) *

Parameters
ƒƒ* 4
.
ƒƒ4 5
AddWithValue
ƒƒ5 A
(
ƒƒA B
$str
ƒƒB J
,
ƒƒJ K
start
ƒƒL Q
+
ƒƒR S
$str
ƒƒT _
)
ƒƒ_ `
;
ƒƒ` a
SqlParameter
„„ 
param4
„„ #
=
„„$ %
cmd
„„& )
.
„„) *

Parameters
„„* 4
.
„„4 5
AddWithValue
„„5 A
(
„„A B
$str
„„B H
,
„„H I
end
„„J M
+
„„N O
$str
„„P [
)
„„[ \
;
„„\ ]
SqlDataAdapter
…… 
dataAdapter
…… *
=
……+ ,
new
……- 0
SqlDataAdapter
……1 ?
(
……? @
cmd
……@ C
)
……C D
;
……D E
dataAdapter
†† 
.
†† 
Fill
††  
(
††  !
dataset
††! (
,
††( )
$str
††* 2
)
††2 3
;
††3 4
}
‡‡ 
return
‰‰ 
dataset
‰‰ 
;
‰‰ 
}
 	
DataSet
 $
SearchCommentByContent
 &
(
& '
string
' -
keyword
. 5
=
6 7
$str
8 :
,
: ;
string
< B
category
C K
=
L M
$str
N P
,
P Q
string
R X
start
Y ^
=
_ `
$str
a m
,
m n
string
o u
end
v y
=
z {
$str| 
) ‰
{
 	
DataSet
 
dataset
 
=
 
new
 !
DataSet
" )
(
) *
)
* +
;
+ ,
using
 
(
 
SqlConnection
  
conn
! %
=
& '
new
( +
SqlConnection
, 9
(
9 :
new
: =
Config
> D
(
D E
)
E F
.
F G
ConectionString
G V
)
V W
)
W X
{
 

SqlCommand
‘‘ 
cmd
‘‘ 
=
‘‘  
new
‘‘! $

SqlCommand
‘‘% /
(
‘‘/ 0
$str
‘‘0 I
,
‘‘I J
conn
‘‘K O
)
‘‘O P
;
‘‘P Q
cmd
’’ 
.
’’ 
CommandType
’’ 
=
’’  !
CommandType
’’" -
.
’’- .
StoredProcedure
’’. =
;
’’= >
SqlParameter
““ 
param
““ "
=
““# $
cmd
““% (
.
““( )

Parameters
““) 3
.
““3 4
AddWithValue
““4 @
(
““@ A
$str
““A K
,
““K L
keyword
““M T
)
““T U
;
““U V
SqlParameter
”” 
param2
”” #
=
””$ %
cmd
””& )
.
””) *

Parameters
””* 4
.
””4 5
AddWithValue
””5 A
(
””A B
$str
””B M
,
””M N
category
””O W
)
””W X
;
””X Y
SqlParameter
•• 
param3
•• #
=
••$ %
cmd
••& )
.
••) *

Parameters
••* 4
.
••4 5
AddWithValue
••5 A
(
••A B
$str
••B J
,
••J K
start
••L Q
+
••R S
$str
••T _
)
••_ `
;
••` a
SqlParameter
–– 
param4
–– #
=
––$ %
cmd
––& )
.
––) *

Parameters
––* 4
.
––4 5
AddWithValue
––5 A
(
––A B
$str
––B H
,
––H I
end
––J M
+
––N O
$str
––P [
)
––[ \
;
––\ ]
SqlDataAdapter
—— 
dataAdapter
—— *
=
——+ ,
new
——- 0
SqlDataAdapter
——1 ?
(
——? @
cmd
——@ C
)
——C D
;
——D E
dataAdapter
 
.
 
Fill
  
(
  !
dataset
! (
,
( )
$str
* 2
)
2 3
;
3 4
}
™™ 
return
›› 
dataset
›› 
;
›› 
}
 	
void
 !
ChangeCommentStatus
  
(
  !
string
! '
[
' (
]
( )
values
* 0
,
0 1
int
2 5
status
6 <
)
< =
{
 	
using
   
(
   
SqlConnection
    
conn
  ! %
=
  & '
new
  ( +
SqlConnection
  , 9
(
  9 :
new
  : =
Config
  > D
(
  D E
)
  E F
.
  F G
ConectionString
  G V
)
  V W
)
  W X
{
΅΅ 
	DataTable
ΆΆ 
dt
ΆΆ 
=
ΆΆ 
new
ΆΆ "
	DataTable
ΆΆ# ,
(
ΆΆ, -
)
ΆΆ- .
;
ΆΆ. /
dt
££ 
.
££ 
Columns
££ 
.
££ 
Add
££ 
(
££ 
$str
££ #
,
££# $
typeof
££% +
(
££+ ,
string
££, 2
)
££2 3
)
££3 4
;
££4 5
if
¤¤ 
(
¤¤ 
values
¤¤ 
.
¤¤ 
Count
¤¤  
(
¤¤  !
)
¤¤! "
!=
¤¤# %
$num
¤¤& '
)
¤¤' (
{
¥¥ 
foreach
¦¦ 
(
¦¦ 
string
¦¦ #
str
¦¦$ '
in
¦¦( *
values
¦¦+ 1
)
¦¦1 2
{
§§ 
dt
¨¨ 
.
¨¨ 
Rows
¨¨ 
.
¨¨  
Add
¨¨  #
(
¨¨# $
str
¨¨$ '
)
¨¨' (
;
¨¨( )
}
©© 
}
ªª 

SqlCommand
¬¬ 
cmd
¬¬ 
=
¬¬  
new
¬¬! $

SqlCommand
¬¬% /
(
¬¬/ 0
$str
¬¬0 K
,
¬¬K L
conn
¬¬M Q
)
¬¬Q R
;
¬¬R S
cmd
­­ 
.
­­ 
CommandType
­­ 
=
­­  !
CommandType
­­" -
.
­­- .
StoredProcedure
­­. =
;
­­= >
SqlParameter
®® 
param
®® "
=
®®# $
cmd
®®% (
.
®®( )

Parameters
®®) 3
.
®®3 4
AddWithValue
®®4 @
(
®®@ A
$str
®®A H
,
®®H I
dt
®®J L
)
®®L M
;
®®M N
param
―― 
.
―― 
	SqlDbType
―― 
=
――  !
	SqlDbType
――" +
.
――+ ,

Structured
――, 6
;
――6 7
SqlParameter
°° 
param2
°° #
=
°°$ %
cmd
°°& )
.
°°) *

Parameters
°°* 4
.
°°4 5
AddWithValue
°°5 A
(
°°A B
$str
°°B I
,
°°I J
status
°°K Q
)
°°Q R
;
°°R S
param2
±± 
.
±± 
	SqlDbType
±±  
=
±±! "
	SqlDbType
±±# ,
.
±±, -
Bit
±±- 0
;
±±0 1
param
²² 
.
²² 
TypeName
²² 
=
²²  
$str
²²! .
;
²². /
conn
³³ 
.
³³ 
Open
³³ 
(
³³ 
)
³³ 
;
³³ 
cmd
΄΄ 
.
΄΄ 
ExecuteNonQuery
΄΄ #
(
΄΄# $
)
΄΄$ %
;
΄΄% &
conn
µµ 
.
µµ 
Close
µµ 
(
µµ 
)
µµ 
;
µµ 
}
¶¶ 
}
·· 	
bool
ΉΉ 
ValidateInput
ΉΉ 
(
ΉΉ 
string
ΉΉ !
keyword
ΉΉ" )
,
ΉΉ) *
string
ΉΉ+ 1
category
ΉΉ2 :
,
ΉΉ: ;
string
ΉΉ< B
start
ΉΉC H
,
ΉΉH I
string
ΉΉJ P
end
ΉΉQ T
)
ΉΉT U
{
ΊΊ 	
if
»» 
(
»» 
keyword
»» 
.
»» 
Trim
»» 
(
»» 
)
»» 
==
»» !
$str
»»" -
||
»». 0
keyword
»»1 8
.
»»8 9
Trim
»»9 =
(
»»= >
)
»»> ?
==
»»@ B
$str
»»C E
)
»»E F
return
»»G M
false
»»N S
;
»»S T
string
½½ 
[
½½ 
]
½½ 

categories
½½ 
=
½½  !
new
½½" %
string
½½& ,
[
½½, -
]
½½- .
{
½½/ 0
$str
½½1 B
,
½½B C
$str
½½D N
,
½½N O
$str
½½P Y
}
½½Z [
;
½½[ \
bool
ΎΎ 
valid
ΎΎ 
=
ΎΎ 
false
ΎΎ 
;
ΎΎ 
foreach
ΏΏ 
(
ΏΏ 
string
ΏΏ 
str
ΏΏ 
in
ΏΏ  "

categories
ΏΏ# -
)
ΏΏ- .
{
ΐΐ 
if
ΑΑ 
(
ΑΑ 
str
ΑΑ 
==
ΑΑ 
category
ΑΑ #
.
ΑΑ# $
Trim
ΑΑ$ (
(
ΑΑ( )
)
ΑΑ) *
)
ΑΑ* +
valid
ΑΑ, 1
=
ΑΑ2 3
true
ΑΑ4 8
;
ΑΑ8 9
}
ΒΒ 
if
ΓΓ 
(
ΓΓ 
!
ΓΓ 
valid
ΓΓ 
)
ΓΓ 
return
ΓΓ 
false
ΓΓ $
;
ΓΓ$ %
return
ΕΕ 
true
ΕΕ 
;
ΕΕ 
}
ΖΖ 	
	protected
ΘΘ 
void
ΘΘ 
BtnRestore_Click
ΘΘ '
(
ΘΘ' (
object
ΘΘ( .
sender
ΘΘ/ 5
,
ΘΘ5 6
	EventArgs
ΘΘ7 @
e
ΘΘA B
)
ΘΘB C
{
ΙΙ 	
try
ΚΚ 
{
ΛΛ 
List
ΜΜ 
<
ΜΜ 
string
ΜΜ 
>
ΜΜ 
uids
ΜΜ !
=
ΜΜ" #
new
ΜΜ$ '
List
ΜΜ( ,
<
ΜΜ, -
string
ΜΜ- 3
>
ΜΜ3 4
(
ΜΜ4 5
)
ΜΜ5 6
;
ΜΜ6 7
foreach
ΝΝ 
(
ΝΝ 
RepeaterItem
ΝΝ %
item
ΝΝ& *
in
ΝΝ+ -
commentList
ΝΝ. 9
.
ΝΝ9 :
Items
ΝΝ: ?
)
ΝΝ? @
{
ΞΞ 
CheckBox
ΟΟ 
cb
ΟΟ 
=
ΟΟ  !
(
ΟΟ" #
CheckBox
ΟΟ# +
)
ΟΟ+ ,
item
ΟΟ, 0
.
ΟΟ0 1
FindControl
ΟΟ1 <
(
ΟΟ< =
$str
ΟΟ= N
)
ΟΟN O
;
ΟΟO P
if
ΠΠ 
(
ΠΠ 
cb
ΠΠ 
.
ΠΠ 
Checked
ΠΠ "
)
ΠΠ" #
{
ΡΡ 
HiddenField
ÒÒ #
	commentID
ÒÒ$ -
=
ÒÒ. /
(
ÒÒ0 1
HiddenField
ÒÒ1 <
)
ÒÒ< =
item
ÒÒ= A
.
ÒÒA B
FindControl
ÒÒB M
(
ÒÒM N
$str
ÒÒN Y
)
ÒÒY Z
;
ÒÒZ [
uids
ΣΣ 
.
ΣΣ 
Add
ΣΣ  
(
ΣΣ  !
	commentID
ΣΣ! *
.
ΣΣ* +
Value
ΣΣ+ 0
)
ΣΣ0 1
;
ΣΣ1 2
}
ΤΤ 
}
ΥΥ !
ChangeCommentStatus
ΧΧ #
(
ΧΧ# $
uids
ΧΧ$ (
.
ΧΧ( )
ToArray
ΧΧ) 0
(
ΧΧ0 1
)
ΧΧ1 2
,
ΧΧ2 3
$num
ΧΧ4 5
)
ΧΧ5 6
;
ΧΧ6 7
DisplayAllComment
ΨΨ !
(
ΨΨ! "
true
ΨΨ" &
)
ΨΨ& '
;
ΨΨ' (
MyTask
ΪΪ 
otherUC
ΪΪ 
=
ΪΪ  
this
ΪΪ! %
.
ΪΪ% &
Page
ΪΪ& *
.
ΪΪ* +
FindControl
ΪΪ+ 6
(
ΪΪ6 7
$str
ΪΪ7 A
)
ΪΪA B
as
ΪΪC E
MyTask
ΪΪF L
;
ΪΪL M
otherUC
ΫΫ 
.
ΫΫ 
DisplayAllComment
ΫΫ )
(
ΫΫ) *
false
ΫΫ* /
)
ΫΫ/ 0
;
ΫΫ0 1
ApprovedComment
άά 
otherUC2
άά  (
=
άά) *
this
άά+ /
.
άά/ 0
Page
άά0 4
.
άά4 5
FindControl
άά5 @
(
άά@ A
$str
άάA T
)
άάT U
as
άάV X
ApprovedComment
άάY h
;
άάh i
otherUC2
έέ 
.
έέ 
DisplayAllComment
έέ *
(
έέ* +
false
έέ+ 0
)
έέ0 1
;
έέ1 2
}
ήή 
catch
ίί 
(
ίί 
	Exception
ίί 
ex
ίί 
)
ίί  
{
ΰΰ 
Page
αα 
.
αα 
ClientScript
αα !
.
αα! "#
RegisterStartupScript
αα" 7
(
αα7 8
this
αα8 <
.
αα< =
GetType
αα= D
(
ααD E
)
ααE F
,
ααF G
$str
ααH O
,
ααO P
$@"
ααQ T>
/$(document).ready(function () {{ alert('Error: ααT ƒ
{ααƒ „
exαα„ †
.αα† ‡
Messageαα‡ 
}αα 
') }});αα –
"αα– —
,αα— 
trueαα™ 
)αα 
;αα 
}
ββ 
}
γγ 	
	protected
εε 
void
εε #
BtnSearchByDate_Click
εε ,
(
εε, -
object
εε- 3
sender
εε4 :
,
εε: ;
	EventArgs
εε< E
e
εεF G
)
εεG H
{
ζζ 	
if
ηη 
(
ηη 

IsPostBack
ηη 
)
ηη 
{
θθ 
DisplayComment
ιι 
(
ιι 
Keyword
ιι &
.
ιι& '
Text
ιι' +
,
ιι+ ,
CategoryList
ιι- 9
.
ιι9 :
Text
ιι: >
,
ιι> ?
DatePickerStart
ιι@ O
.
ιιO P
Text
ιιP T
,
ιιT U
DatePickerEnd
ιιV c
.
ιιc d
Text
ιιd h
,
ιιh i
true
ιιj n
)
ιιn o
;
ιιo p
MyTask
κκ 
otherUC
κκ 
=
κκ  
this
κκ! %
.
κκ% &
Page
κκ& *
.
κκ* +
FindControl
κκ+ 6
(
κκ6 7
$str
κκ7 A
)
κκA B
as
κκC E
MyTask
κκF L
;
κκL M
otherUC
λλ 
.
λλ 
DisplayAllComment
λλ )
(
λλ) *
false
λλ* /
)
λλ/ 0
;
λλ0 1
ApprovedComment
μμ 
otherUC2
μμ  (
=
μμ) *
this
μμ+ /
.
μμ/ 0
Page
μμ0 4
.
μμ4 5
FindControl
μμ5 @
(
μμ@ A
$str
μμA T
)
μμT U
as
μμV X
ApprovedComment
μμY h
;
μμh i
otherUC2
νν 
.
νν 
DisplayAllComment
νν *
(
νν* +
false
νν+ 0
)
νν0 1
;
νν1 2
}
ξξ 
}
οο 	
	protected
ρρ 
void
ρρ 
BtnShowAll_Click
ρρ '
(
ρρ' (
object
ρρ( .
sender
ρρ/ 5
,
ρρ5 6
	EventArgs
ρρ7 @
e
ρρA B
)
ρρB C
{
ςς 	
if
σσ 
(
σσ 

IsPostBack
σσ 
)
σσ 
{
ττ 
try
υυ 
{
φφ 
DisplayAllComment
χχ %
(
χχ% &
true
χχ& *
)
χχ* +
;
χχ+ ,
MyTask
ψψ 
otherUC
ψψ "
=
ψψ# $
this
ψψ% )
.
ψψ) *
Page
ψψ* .
.
ψψ. /
FindControl
ψψ/ :
(
ψψ: ;
$str
ψψ; E
)
ψψE F
as
ψψG I
MyTask
ψψJ P
;
ψψP Q
otherUC
ωω 
.
ωω 
DisplayAllComment
ωω -
(
ωω- .
false
ωω. 3
)
ωω3 4
;
ωω4 5
ApprovedComment
ϊϊ #
otherUC2
ϊϊ$ ,
=
ϊϊ- .
this
ϊϊ/ 3
.
ϊϊ3 4
Page
ϊϊ4 8
.
ϊϊ8 9
FindControl
ϊϊ9 D
(
ϊϊD E
$str
ϊϊE X
)
ϊϊX Y
as
ϊϊZ \
ApprovedComment
ϊϊ] l
;
ϊϊl m
otherUC2
ϋϋ 
.
ϋϋ 
DisplayAllComment
ϋϋ .
(
ϋϋ. /
false
ϋϋ/ 4
)
ϋϋ4 5
;
ϋϋ5 6
}
όό 
catch
ύύ 
(
ύύ 
	Exception
ύύ  
ex
ύύ! #
)
ύύ# $
{
ώώ 
Page
ÿÿ 
.
ÿÿ 
ClientScript
ÿÿ %
.
ÿÿ% &#
RegisterStartupScript
ÿÿ& ;
(
ÿÿ; <
this
ÿÿ< @
.
ÿÿ@ A
GetType
ÿÿA H
(
ÿÿH I
)
ÿÿI J
,
ÿÿJ K
$str
ÿÿL R
,
ÿÿR S
$@"
ÿÿT W>
/$(document).ready(function () {{ alert('Error: ÿÿW †
{ÿÿ† ‡
exÿÿ‡ ‰
.ÿÿ‰ 
Messageÿÿ ‘
}ÿÿ‘ ’
') }});ÿÿ’ ™
"ÿÿ™ 
,ÿÿ ›
trueÿÿ  
)ÿÿ  ΅
;ÿÿ΅ Ά
}
€€ 
}
 
}
‚‚ 	
}
ƒƒ 
}„„ ς¬
bC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\UserControl\ApprovedComment.ascx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
UserControl9 D
{ 
public 

partial 
class 
ApprovedComment (
:) *
System+ 1
.1 2
Web2 5
.5 6
UI6 8
.8 9
UserControl9 D
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
try 
{ 
DisplayAllComment %
(% &
)& '
;' (
} 
catch 
( 
	Exception  
ex! #
)# $
{ 
Page 
. 
ClientScript %
.% &!
RegisterStartupScript& ;
(; <
this< @
.@ A
GetTypeA H
(H I
)I J
,J K
$strL U
,U V
$@"W Z<
/$(document).ready(function () {{ alert('Error: 	Z ‰
{
‰ 
ex
 
.
 
Message
 ”
}
” •
') }});
• 
"
 
,
 
true
 £
)
£ ¤
;
¤ ¥
} 
} 
} 	
public 
void 
DisplayAllComment %
(% &
bool& *
setTab+ 1
=2 3
false4 9
)9 :
{ 	
commentList   
.   

DataSource   "
=  # $
SearchComment  % 2
(  2 3
	selectAll  3 <
:  < =
true  > B
)  B C
;  C D
commentList!! 
.!! 
DataBind!!  
(!!  !
)!!! "
;!!" #
if## 
(## 
setTab## 
)## 
{$$ 
Page%% 
.%% 
ClientScript%% !
.%%! "!
RegisterStartupScript%%" 7
(%%7 8
this%%8 <
.%%< =
GetType%%= D
(%%D E
)%%E F
,%%F G
$str%%H S
,%%S T
$@"%%U XS
F$(document).ready(function () {{ SetActiveTab('approved-comment') }});	%%X 
"
%% 
,
%%  
true
%%΅ ¥
)
%%¥ ¦
;
%%¦ §
}&& 
}'' 	
public)) 
void)) 
DisplayComment)) "
())" #
string))# )
keyword))* 1
=))2 3
$str))4 6
,))6 7
string))8 >
category))? G
=))H I
$str))J L
,))L M
string))N T
start))U Z
=))[ \
$str))] i
,))i j
string))k q
end))r u
=))v w
$str	))x „
,
))„ …
bool
))† 
setTab
))‹ ‘
=
))’ “
false
))” ™
)
))™ 
{** 	
if++ 
(++ 
setTab++ 
)++ 
{,, 
Page-- 
.-- 
ClientScript-- !
.--! "!
RegisterStartupScript--" 7
(--7 8
this--8 <
.--< =
GetType--= D
(--D E
)--E F
,--F G
$str--H S
,--S T
$@"--U XS
F$(document).ready(function () {{ SetActiveTab('approved-comment') }});	--X 
"
-- 
,
--  
true
--΅ ¥
)
--¥ ¦
;
--¦ §
}.. 
if00 
(00 
!00 
ValidateInput00 
(00 
keyword00 &
,00& '
category00( 0
,000 1
start002 7
,007 8
end009 <
)00< =
)00= >
{11 
Page22 
.22 
ClientScript22 !
.22! "!
RegisterStartupScript22" 7
(227 8
this228 <
.22< =
GetType22= D
(22D E
)22E F
,22F G
$str22H V
,22V W
$@"22X [z
m$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid options.'); }}, 1); }});	22[ Θ
"
22Θ Ι
,
22Ι Κ
true
22Λ Ο
)
22Ο Π
;
22Π Ρ
DisplayAllComment33 !
(33! "
false33" '
)33' (
;33( )
return44 
;44 
}55 
if77 
(77 
start77 
.77 
Trim77 
(77 
)77 
==77 
$str77  &
||77' )
start77* /
.77/ 0
Trim770 4
(774 5
)775 6
==777 9
$str77: <
)77< =
start77> C
=77D E
$str77F R
;77R S
if88 
(88 
end88 
.88 
Trim88 
(88 
)88 
==88 
$str88 "
||88# %
end88& )
.88) *
Trim88* .
(88. /
)88/ 0
==881 3
$str884 6
)886 7
end888 ;
=88< =
$str88> J
;88J K
Regex:: 
r:: 
=:: 
new:: 
Regex:: 
(::  
$str::  4
)::4 5
;::5 6
if;; 
(;; 
!;; 
r;; 
.;; 
IsMatch;; 
(;; 
start;;  
);;  !
||;;" $
!;;% &
r;;& '
.;;' (
IsMatch;;( /
(;;/ 0
end;;0 3
);;3 4
);;4 5
{<< 
Page== 
.== 
ClientScript== !
.==! "!
RegisterStartupScript==" 7
(==7 8
this==8 <
.==< =
GetType=== D
(==D E
)==E F
,==F G
$str==H S
,==S T
$@"==U Xw
j$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid date.'); }}, 1); }});	==X Β
"
==Β Γ
,
==Γ Δ
true
==Ε Ι
)
==Ι Κ
;
==Κ Λ
return>> 
;>> 
}?? 
commentListAA 
.AA 

DataSourceAA "
=AA# $
SearchCommentAA% 2
(AA2 3
falseAA3 8
,AA8 9
keywordAA: A
,AAA B
categoryAAC K
,AAK L
startAAM R
,AAR S
endAAT W
)AAW X
;AAX Y
commentListBB 
.BB 
DataBindBB  
(BB  !
)BB! "
;BB" #
}CC 	
DataSetEE 
SearchCommentEE 
(EE 
boolEE "
	selectAllEE# ,
,EE, -
stringEE. 4
keywordEE5 <
=EE= >
$strEE? A
,EEA B
stringEEC I
categoryEEJ R
=EES T
$strEEU W
,EEW X
stringEEY _
startEE` e
=EEf g
$strEEh t
,EEt u
stringEEv |
end	EE} €
=
EE ‚
$str
EEƒ 
)
EE 
{FF 	
DataSetNN 
datasetNN 
=NN 
newNN !
DataSetNN" )
(NN) *
)NN* +
;NN+ ,
usingOO 
(OO 
SqlConnectionOO  
connOO! %
=OO& '
newOO( +
SqlConnectionOO, 9
(OO9 :
newOO: =
ConfigOO> D
(OOD E
)OOE F
.OOF G
ConectionStringOOG V
)OOV W
)OOW X
{PP 

SqlCommandQQ 
cmdQQ 
=QQ  
newQQ! $

SqlCommandQQ% /
(QQ/ 0
$strQQ0 C
,QQC D
connQQE I
)QQI J
;QQJ K
cmdRR 
.RR 
CommandTypeRR 
=RR  !
CommandTypeRR" -
.RR- .
StoredProcedureRR. =
;RR= >
SqlParameterSS 
paramSS "
=SS# $
cmdSS% (
.SS( )

ParametersSS) 3
.SS3 4
AddWithValueSS4 @
(SS@ A
$strSSA M
,SSM N
	selectAllSSO X
)SSX Y
;SSY Z
SqlParameterTT 
param1TT #
=TT$ %
cmdTT& )
.TT) *

ParametersTT* 4
.TT4 5
AddWithValueTT5 A
(TTA B
$strTTB P
,TTP Q
$numTTR S
)TTS T
;TTT U
SqlParameterUU 
param2UU #
=UU$ %
cmdUU& )
.UU) *

ParametersUU* 4
.UU4 5
AddWithValueUU5 A
(UUA B
$strUUB L
,UUL M
keywordUUN U
)UUU V
;UUV W
SqlParameterVV 
param3VV #
=VV$ %
cmdVV& )
.VV) *

ParametersVV* 4
.VV4 5
AddWithValueVV5 A
(VVA B
$strVVB M
,VVM N
categoryVVO W
)VVW X
;VVX Y
SqlParameterWW 
param4WW #
=WW$ %
cmdWW& )
.WW) *

ParametersWW* 4
.WW4 5
AddWithValueWW5 A
(WWA B
$strWWB J
,WWJ K
startWWL Q
+WWR S
$strWWT _
)WW_ `
;WW` a
SqlParameterXX 
param5XX #
=XX$ %
cmdXX& )
.XX) *

ParametersXX* 4
.XX4 5
AddWithValueXX5 A
(XXA B
$strXXB H
,XXH I
endXXJ M
+XXN O
$strXXP [
)XX[ \
;XX\ ]
SqlDataAdapterYY 
dataAdapterYY *
=YY+ ,
newYY- 0
SqlDataAdapterYY1 ?
(YY? @
cmdYY@ C
)YYC D
;YYD E
dataAdapterZZ 
.ZZ 
FillZZ  
(ZZ  !
datasetZZ! (
,ZZ( )
$strZZ* 2
)ZZ2 3
;ZZ3 4
}[[ 
return]] 
dataset]] 
;]] 
}^^ 	
void`` !
ChangeCommentApproval`` "
(``" #
string``# )
[``) *
]``* +
values``, 2
,``2 3
int``4 7
approval``8 @
)``@ A
{aa 	
usingbb 
(bb 
SqlConnectionbb  
connbb! %
=bb& '
newbb( +
SqlConnectionbb, 9
(bb9 :
newbb: =
Configbb> D
(bbD E
)bbE F
.bbF G
ConectionStringbbG V
)bbV W
)bbW X
{cc 
	DataTabledd 
dtdd 
=dd 
newdd "
	DataTabledd# ,
(dd, -
)dd- .
;dd. /
dtee 
.ee 
Columnsee 
.ee 
Addee 
(ee 
$stree #
,ee# $
typeofee% +
(ee+ ,
stringee, 2
)ee2 3
)ee3 4
;ee4 5
ifff 
(ff 
valuesff 
.ff 
Countff  
(ff  !
)ff! "
!=ff# %
$numff& '
)ff' (
{gg 
foreachhh 
(hh 
stringhh #
strhh$ '
inhh( *
valueshh+ 1
)hh1 2
{ii 
dtjj 
.jj 
Rowsjj 
.jj  
Addjj  #
(jj# $
strjj$ '
)jj' (
;jj( )
}kk 
}ll 

SqlCommandnn 
cmdnn 
=nn  
newnn! $

SqlCommandnn% /
(nn/ 0
$strnn0 K
,nnK L
connnnM Q
)nnQ R
;nnR S
cmdoo 
.oo 
CommandTypeoo 
=oo  !
CommandTypeoo" -
.oo- .
StoredProcedureoo. =
;oo= >
SqlParameterpp 
parampp "
=pp# $
cmdpp% (
.pp( )

Parameterspp) 3
.pp3 4
AddWithValuepp4 @
(pp@ A
$strppA H
,ppH I
dtppJ L
)ppL M
;ppM N
paramqq 
.qq 
	SqlDbTypeqq 
=qq  !
	SqlDbTypeqq" +
.qq+ ,

Structuredqq, 6
;qq6 7
SqlParameterrr 
param2rr #
=rr$ %
cmdrr& )
.rr) *

Parametersrr* 4
.rr4 5
AddWithValuerr5 A
(rrA B
$strrrB I
,rrI J
approvalrrK S
)rrS T
;rrT U
param2ss 
.ss 
	SqlDbTypess  
=ss! "
	SqlDbTypess# ,
.ss, -
Bitss- 0
;ss0 1
paramtt 
.tt 
TypeNamett 
=tt  
$strtt! .
;tt. /
connuu 
.uu 
Openuu 
(uu 
)uu 
;uu 
cmdvv 
.vv 
ExecuteNonQueryvv #
(vv# $
)vv$ %
;vv% &
connww 
.ww 
Closeww 
(ww 
)ww 
;ww 
}xx 
}yy 	
bool{{ 
ValidateInput{{ 
({{ 
string{{ !
keyword{{" )
,{{) *
string{{+ 1
category{{2 :
,{{: ;
string{{< B
start{{C H
,{{H I
string{{J P
end{{Q T
){{T U
{|| 	
if}} 
(}} 
keyword}} 
.}} 
Trim}} 
(}} 
)}} 
==}} !
$str}}" -
||}}. 0
keyword}}1 8
.}}8 9
Trim}}9 =
(}}= >
)}}> ?
==}}@ B
$str}}C E
)}}E F
return}}G M
false}}N S
;}}S T
string 
[ 
] 

categories 
=  !
new" %
string& ,
[, -
]- .
{/ 0
$str1 B
,B C
$strD N
,N O
$strP Y
}Z [
;[ \
bool
€€ 
valid
€€ 
=
€€ 
false
€€ 
;
€€ 
foreach
 
(
 
string
 
str
 
in
  "

categories
# -
)
- .
{
‚‚ 
if
ƒƒ 
(
ƒƒ 
str
ƒƒ 
==
ƒƒ 
category
ƒƒ #
.
ƒƒ# $
Trim
ƒƒ$ (
(
ƒƒ( )
)
ƒƒ) *
)
ƒƒ* +
valid
ƒƒ, 1
=
ƒƒ2 3
true
ƒƒ4 8
;
ƒƒ8 9
}
„„ 
if
…… 
(
…… 
!
…… 
valid
…… 
)
…… 
return
…… 
false
…… $
;
……$ %
return
‡‡ 
true
‡‡ 
;
‡‡ 
}
 	
	protected
 
void
 
BtnDelete_Click
 &
(
& '
object
' -
sender
. 4
,
4 5
	EventArgs
6 ?
e
@ A
)
A B
{
‹‹ 	
try
 
{
 
List
 
<
 
string
 
>
 
uids
 !
=
" #
new
$ '
List
( ,
<
, -
string
- 3
>
3 4
(
4 5
)
5 6
;
6 7
foreach
 
(
 
RepeaterItem
 %
item
& *
in
+ -
commentList
. 9
.
9 :
Items
: ?
)
? @
{
 
CheckBox
‘‘ 
cb
‘‘ 
=
‘‘  !
(
‘‘" #
CheckBox
‘‘# +
)
‘‘+ ,
item
‘‘, 0
.
‘‘0 1
FindControl
‘‘1 <
(
‘‘< =
$str
‘‘= N
)
‘‘N O
;
‘‘O P
if
’’ 
(
’’ 
cb
’’ 
.
’’ 
Checked
’’ "
)
’’" #
{
““ 
HiddenField
”” #
	commentID
””$ -
=
””. /
(
””0 1
HiddenField
””1 <
)
””< =
item
””= A
.
””A B
FindControl
””B M
(
””M N
$str
””N Y
)
””Y Z
;
””Z [
uids
•• 
.
•• 
Add
••  
(
••  !
	commentID
••! *
.
••* +
Value
••+ 0
)
••0 1
;
••1 2
}
–– 
}
—— #
ChangeCommentApproval
™™ %
(
™™% &
uids
™™& *
.
™™* +
ToArray
™™+ 2
(
™™2 3
)
™™3 4
,
™™4 5
$num
™™6 7
)
™™7 8
;
™™8 9
DisplayAllComment
 !
(
! "
true
" &
)
& '
;
' (
MyTask
 
otherUC
 
=
  
this
! %
.
% &
Page
& *
.
* +
FindControl
+ 6
(
6 7
$str
7 A
)
A B
as
C E
MyTask
F L
;
L M
otherUC
 
.
 
DisplayAllComment
 )
(
) *
false
* /
)
/ 0
;
0 1
DeletedComment
 
otherUC2
 '
=
( )
this
* .
.
. /
Page
/ 3
.
3 4
FindControl
4 ?
(
? @
$str
@ R
)
R S
as
T V
DeletedComment
W e
;
e f
otherUC2
 
.
 
DisplayAllComment
 *
(
* +
false
+ 0
)
0 1
;
1 2
}
   
catch
΅΅ 
(
΅΅ 
	Exception
΅΅ 
ex
΅΅ 
)
΅΅  
{
ΆΆ 
Page
££ 
.
££ 
ClientScript
££ !
.
££! "#
RegisterStartupScript
££" 7
(
££7 8
this
££8 <
.
££< =
GetType
££= D
(
££D E
)
££E F
,
££F G
$str
££H O
,
££O P
$@"
££Q T>
/$(document).ready(function () {{ alert('Error: ££T ƒ
{££ƒ „
ex££„ †
.££† ‡
Message££‡ 
}££ 
') }});££ –
"££– —
,££— 
true££™ 
)££ 
;££ 
}
¤¤ 
}
¥¥ 	
	protected
§§ 
void
§§ #
BtnSearchByDate_Click
§§ ,
(
§§, -
object
§§- 3
sender
§§4 :
,
§§: ;
	EventArgs
§§< E
e
§§F G
)
§§G H
{
¨¨ 	
if
©© 
(
©© 

IsPostBack
©© 
)
©© 
{
ªª 
DisplayComment
«« 
(
«« 
Keyword
«« &
.
««& '
Text
««' +
,
««+ ,
CategoryList
««- 9
.
««9 :
Text
««: >
,
««> ?
DatePickerStart
««@ O
.
««O P
Text
««P T
,
««T U
DatePickerEnd
««V c
.
««c d
Text
««d h
,
««h i
true
««j n
)
««n o
;
««o p
MyTask
¬¬ 
otherUC
¬¬ 
=
¬¬  
this
¬¬! %
.
¬¬% &
Page
¬¬& *
.
¬¬* +
FindControl
¬¬+ 6
(
¬¬6 7
$str
¬¬7 A
)
¬¬A B
as
¬¬C E
MyTask
¬¬F L
;
¬¬L M
otherUC
­­ 
.
­­ 
DisplayAllComment
­­ )
(
­­) *
false
­­* /
)
­­/ 0
;
­­0 1
DeletedComment
®® 
otherUC2
®® '
=
®®( )
this
®®* .
.
®®. /
Page
®®/ 3
.
®®3 4
FindControl
®®4 ?
(
®®? @
$str
®®@ R
)
®®R S
as
®®T V
DeletedComment
®®W e
;
®®e f
otherUC2
―― 
.
―― 
DisplayAllComment
―― *
(
――* +
false
――+ 0
)
――0 1
;
――1 2
}
°° 
}
±± 	
	protected
³³ 
void
³³ 
BtnShowAll_Click
³³ '
(
³³' (
object
³³( .
sender
³³/ 5
,
³³5 6
	EventArgs
³³7 @
e
³³A B
)
³³B C
{
΄΄ 	
if
µµ 
(
µµ 

IsPostBack
µµ 
)
µµ 
{
¶¶ 
try
·· 
{
ΈΈ 
DisplayAllComment
ΉΉ %
(
ΉΉ% &
true
ΉΉ& *
)
ΉΉ* +
;
ΉΉ+ ,
MyTask
ΊΊ 
otherUC
ΊΊ "
=
ΊΊ# $
this
ΊΊ% )
.
ΊΊ) *
Page
ΊΊ* .
.
ΊΊ. /
FindControl
ΊΊ/ :
(
ΊΊ: ;
$str
ΊΊ; E
)
ΊΊE F
as
ΊΊG I
MyTask
ΊΊJ P
;
ΊΊP Q
otherUC
»» 
.
»» 
DisplayAllComment
»» -
(
»»- .
false
»». 3
)
»»3 4
;
»»4 5
DeletedComment
ΌΌ "
otherUC2
ΌΌ# +
=
ΌΌ, -
this
ΌΌ. 2
.
ΌΌ2 3
Page
ΌΌ3 7
.
ΌΌ7 8
FindControl
ΌΌ8 C
(
ΌΌC D
$str
ΌΌD V
)
ΌΌV W
as
ΌΌX Z
DeletedComment
ΌΌ[ i
;
ΌΌi j
otherUC2
½½ 
.
½½ 
DisplayAllComment
½½ .
(
½½. /
false
½½/ 4
)
½½4 5
;
½½5 6
}
ΎΎ 
catch
ΏΏ 
(
ΏΏ 
	Exception
ΏΏ  
ex
ΏΏ! #
)
ΏΏ# $
{
ΐΐ 
Page
ΑΑ 
.
ΑΑ 
ClientScript
ΑΑ %
.
ΑΑ% &#
RegisterStartupScript
ΑΑ& ;
(
ΑΑ; <
this
ΑΑ< @
.
ΑΑ@ A
GetType
ΑΑA H
(
ΑΑH I
)
ΑΑI J
,
ΑΑJ K
$str
ΑΑL R
,
ΑΑR S
$@"
ΑΑT W>
/$(document).ready(function () {{ alert('Error: ΑΑW †
{ΑΑ† ‡
exΑΑ‡ ‰
.ΑΑ‰ 
MessageΑΑ ‘
}ΑΑ‘ ’
') }});ΑΑ’ ™
"ΑΑ™ 
,ΑΑ ›
trueΑΑ  
)ΑΑ  ΅
;ΑΑ΅ Ά
}
ΒΒ 
}
ΓΓ 
}
ΔΔ 	
}
ΕΕ 
}ΖΖ ϋP
aC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\UserControl\DebugDashboard.ascx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
UserControl9 D
{ 
public 

partial 
class 
DebugDashboard '
:( )
System* 0
.0 1
Web1 4
.4 5
UI5 7
.7 8
UserControl8 C
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ "
DisplayApprovedComment &
(& '
)' (
;( )
} 
} 	
public 
void "
DisplayApprovedComment *
(* +
string+ 1
start2 7
=8 9
$str: F
,F G
stringH N
endO R
=S T
$strU a
)a b
{ 	
using 
( 
SqlConnection  
conn! %
=& '
new( +
SqlConnection, 9
(9 :
new: =
Config> D
(D E
)E F
.F G
ConectionStringG V
)V W
)W X
{ 

SqlCommand   
cmd   
=    
new  ! $

SqlCommand  % /
(  / 0
$str  0 P
,  P Q
conn  R V
)  V W
;  W X
cmd!! 
.!! 
CommandType!! 
=!!  !
CommandType!!" -
.!!- .
StoredProcedure!!. =
;!!= >
SqlParameter"" 
param"" "
=""# $
cmd""% (
.""( )

Parameters"") 3
.""3 4
AddWithValue""4 @
(""@ A
$str""A I
,""I J
start""K P
+""Q R
$str""S ^
)""^ _
;""_ `
SqlParameter## 
param2## #
=##$ %
cmd##& )
.##) *

Parameters##* 4
.##4 5
AddWithValue##5 A
(##A B
$str##B H
,##H I
end##J M
+##N O
$str##P [
)##[ \
;##\ ]
SqlDataAdapter$$ 
dataAdapter$$ *
=$$+ ,
new$$- 0
SqlDataAdapter$$1 ?
($$? @
cmd$$@ C
)$$C D
;$$D E
DataSet%% 
ds%% 
=%% 
new%%  
DataSet%%! (
(%%( )
)%%) *
;%%* +
dataAdapter&& 
.&& 
Fill&&  
(&&  !
ds&&! #
,&&# $
$str&&% *
)&&* +
;&&+ ,
commentListDebug''  
.''  !

DataSource''! +
='', -
ds''. 0
.''0 1
Tables''1 7
[''7 8
$str''8 =
]''= >
;''> ?
commentListDebug((  
.((  !
DataBind((! )
((() *
)((* +
;((+ ,
})) 
}** 	
void,, 
DisapproveComment,, 
(,, 
string,, %
[,,% &
],,& '
values,,( .
),,. /
{-- 	
using.. 
(.. 
SqlConnection..  
conn..! %
=..& '
new..( +
SqlConnection.., 9
(..9 :
new..: =
Config..> D
(..D E
)..E F
...F G
ConectionString..G V
)..V W
)..W X
{// 
	DataTable00 
dt00 
=00 
new00 "
	DataTable00# ,
(00, -
)00- .
;00. /
dt11 
.11 
Columns11 
.11 
Add11 
(11 
$str11 #
,11# $
typeof11% +
(11+ ,
string11, 2
)112 3
)113 4
;114 5
if22 
(22 
values22 
.22 
Count22  
(22  !
)22! "
!=22# %
$num22& '
)22' (
{33 
foreach44 
(44 
string44 #
str44$ '
in44( *
values44+ 1
)441 2
{55 
dt66 
.66 
Rows66 
.66  
Add66  #
(66# $
str66$ '
)66' (
;66( )
}77 
}88 

SqlCommand:: 
cmd:: 
=::  
new::! $

SqlCommand::% /
(::/ 0
$str::0 M
,::M N
conn::O S
)::S T
;::T U
cmd;; 
.;; 
CommandType;; 
=;;  !
CommandType;;" -
.;;- .
StoredProcedure;;. =
;;;= >
SqlParameter<< 
param<< "
=<<# $
cmd<<% (
.<<( )

Parameters<<) 3
.<<3 4
AddWithValue<<4 @
(<<@ A
$str<<A H
,<<H I
dt<<J L
)<<L M
;<<M N
param== 
.== 
	SqlDbType== 
===  !
	SqlDbType==" +
.==+ ,

Structured==, 6
;==6 7
SqlParameter>> 
param2>> #
=>>$ %
cmd>>& )
.>>) *

Parameters>>* 4
.>>4 5
AddWithValue>>5 A
(>>A B
$str>>B I
,>>I J
$num>>K L
)>>L M
;>>M N
param2?? 
.?? 
	SqlDbType??  
=??! "
	SqlDbType??# ,
.??, -
Bit??- 0
;??0 1
param@@ 
.@@ 
TypeName@@ 
=@@  
$str@@! .
;@@. /
connAA 
.AA 
OpenAA 
(AA 
)AA 
;AA 
cmdBB 
.BB 
ExecuteNonQueryBB #
(BB# $
)BB$ %
;BB% &
connCC 
.CC 
CloseCC 
(CC 
)CC 
;CC 
}DD 
}EE 	
	protectedGG 
voidGG 
BtnDisapprove_ClickGG *
(GG* +
objectGG+ 1
senderGG2 8
,GG8 9
	EventArgsGG: C
eGGD E
)GGE F
{HH 	
ListII 
<II 
stringII 
>II 
uidsII 
=II 
newII  #
ListII$ (
<II( )
stringII) /
>II/ 0
(II0 1
)II1 2
;II2 3
foreachJJ 
(JJ 
RepeaterItemJJ !
itemJJ" &
inJJ' )
commentListDebugJJ* :
.JJ: ;
ItemsJJ; @
)JJ@ A
{KK 
CheckBoxLL 
cbLL 
=LL 
(LL 
CheckBoxLL '
)LL' (
itemLL( ,
.LL, -
FindControlLL- 8
(LL8 9
$strLL9 O
)LLO P
;LLP Q
ifMM 
(MM 
cbMM 
.MM 
CheckedMM 
)MM 
{NN 
HiddenFieldOO 
	commentIDOO  )
=OO* +
(OO, -
HiddenFieldOO- 8
)OO8 9
itemOO9 =
.OO= >
FindControlOO> I
(OOI J
$strOOJ Z
)OOZ [
;OO[ \
uidsPP 
.PP 
AddPP 
(PP 
	commentIDPP &
.PP& '
ValuePP' ,
)PP, -
;PP- .
}QQ 
}RR 
DisapproveCommentTT 
(TT 
uidsTT "
.TT" #
ToArrayTT# *
(TT* +
)TT+ ,
)TT, -
;TT- ."
DisplayApprovedCommentUU "
(UU" #
)UU# $
;UU$ %
MyTaskWW 
otherUCWW 
=WW 
thisWW !
.WW! "
PageWW" &
.WW& '
FindControlWW' 2
(WW2 3
$strWW3 =
)WW= >
asWW? A
MyTaskWWB H
;WWH I
otherUCXX 
.XX 
DisplayAllCommentXX %
(XX% &
falseXX& +
)XX+ ,
;XX, -
}YY 	
	protected[[ 
void[[ !
BtnSearchByDate_Click[[ ,
([[, -
object[[- 3
sender[[4 :
,[[: ;
	EventArgs[[< E
e[[F G
)[[G H
{\\ 	
if]] 
(]] 

IsPostBack]] 
)]] 
{^^ "
DisplayApprovedComment__ &
(__& ' 
DatePickerDebugStart__' ;
.__; <
Text__< @
,__@ A
DatePickerDebugEnd__B T
.__T U
Text__U Y
)__Y Z
;__Z [
stringaa 
scriptaa 
=aa 
$@"aa  #;
/$(document).ready(function () {{ alert('Start: aa# R
{aaR S 
DatePickerDebugStartaaS g
.aag h
Textaah l
}aal m
 End: aam s
{aas t
DatePickerDebugEnd	aat †
.
aa† ‡
Text
aa‡ ‹
}
aa‹ 
') }});
aa “
"
aa“ ”
;
aa” •
Pagebb 
.bb 
ClientScriptbb !
.bb! "!
RegisterStartupScriptbb" 7
(bb7 8
thisbb8 <
.bb< =
GetTypebb= D
(bbD E
)bbE F
,bbF G
$strbbH N
,bbN O
scriptbbP V
,bbV W
truebbX \
)bb\ ]
;bb] ^
}dd 
}ee 	
	protectedgg 
voidgg 
BtnShowAll_Clickgg '
(gg' (
objectgg( .
sendergg/ 5
,gg5 6
	EventArgsgg7 @
eggA B
)ggB C
{hh 	
ifii 
(ii 

IsPostBackii 
)ii 
{jj "
DisplayApprovedCommentkk &
(kk& '
)kk' (
;kk( )
MyTaskll 
otherUCll 
=ll  
thisll! %
.ll% &
Pagell& *
.ll* +
FindControlll+ 6
(ll6 7
$strll7 A
)llA B
asllC E
MyTaskllF L
;llL M
otherUCmm 
.mm 
DisplayAllCommentmm )
(mm) *
falsemm* /
)mm/ 0
;mm0 1
}nn 
}oo 	
}pp 
}qq ÒΘ
YC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\UserControl\MyTask.ascx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
UserControl9 D
{ 
public 

partial 
class 
MyTask 
:  !
System" (
.( )
Web) ,
., -
UI- /
./ 0
UserControl0 ;
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ 
try 
{ 
DisplayAllComment %
(% &
)& '
;' (
} 
catch 
( 
	Exception  
ex! #
)# $
{ 
Page 
. 
ClientScript %
.% &!
RegisterStartupScript& ;
(; <
this< @
.@ A
GetTypeA H
(H I
)I J
,J K
$strL U
,U V
$@"W Z<
/$(document).ready(function () {{ alert('Error: 	Z ‰
{
‰ 
ex
 
.
 
Message
 ”
}
” •
') }});
• 
"
 
,
 
true
 £
)
£ ¤
;
¤ ¥
} 
} 
} 	
public 
void 
DisplayAllComment %
(% &
bool& *
setTab+ 1
=2 3
false4 9
)9 :
{ 	
commentList   
.   

DataSource   "
=  # $
SearchComment  % 2
(  2 3
	selectAll  3 <
:  < =
true  = A
)  A B
;  B C
commentList!! 
.!! 
DataBind!!  
(!!  !
)!!! "
;!!" #
if## 
(## 
setTab## 
)## 
{$$ 
Page%% 
.%% 
ClientScript%% !
.%%! "!
RegisterStartupScript%%" 7
(%%7 8
this%%8 <
.%%< =
GetType%%= D
(%%D E
)%%E F
,%%F G
$str%%H S
,%%S T
$@"%%U XJ
=$(document).ready(function () {{ SetActiveTab('my-task') }});	%%X •
"
%%• –
,
%%– —
true
%% 
)
%% 
;
%% 
}&& 
}'' 	
public)) 
void)) 
DisplayComment)) "
())" #
string))# )
keyword))* 1
=))2 3
$str))4 6
,))6 7
string))8 >
category))? G
=))H I
$str))J L
,))L M
string))N T
start))U Z
=))[ \
$str))] i
,))i j
string))k q
end))r u
=))v w
$str	))x „
,
))„ …
bool
))† 
setTab
))‹ ‘
=
))’ “
false
))” ™
)
))™ 
{** 	
if++ 
(++ 
setTab++ 
)++ 
{,, 
Page-- 
.-- 
ClientScript-- !
.--! "!
RegisterStartupScript--" 7
(--7 8
this--8 <
.--< =
GetType--= D
(--D E
)--E F
,--F G
$str--H S
,--S T
$@"--U XJ
=$(document).ready(function () {{ SetActiveTab('my-task') }});	--X •
"
--• –
,
--– —
true
-- 
)
-- 
;
-- 
}.. 
if00 
(00 
!00 
ValidateInput00 
(00 
keyword00 &
,00& '
category00( 0
,000 1
start002 7
,007 8
end009 <
)00< =
)00= >
{11 
DisplayAllComment22 !
(22! "
false22" '
)22' (
;22( )
Page33 
.33 
ClientScript33 !
.33! "!
RegisterStartupScript33" 7
(337 8
this338 <
.33< =
GetType33= D
(33D E
)33E F
,33F G
$str33H V
,33V W
$@"33X [z
m$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid options.'); }}, 1); }});	33[ Θ
"
33Θ Ι
,
33Ι Κ
true
33Λ Ο
)
33Ο Π
;
33Π Ρ
return44 
;44 
}55 
if77 
(77 
start77 
.77 
Trim77 
(77 
)77 
==77 
$str77  &
||77' )
start77* /
.77/ 0
Trim770 4
(774 5
)775 6
==777 9
$str77: <
)77< =
start77> C
=77D E
$str77F R
;77R S
if88 
(88 
end88 
.88 
Trim88 
(88 
)88 
==88 
$str88 "
||88# %
end88& )
.88) *
Trim88* .
(88. /
)88/ 0
==881 3
$str884 6
)886 7
end888 ;
=88< =
$str88> J
;88J K
Regex:: 
r:: 
=:: 
new:: 
Regex:: 
(::  
$str::  4
)::4 5
;::5 6
if;; 
(;; 
!;; 
r;; 
.;; 
IsMatch;; 
(;; 
start;;  
);;  !
||;;" $
!;;% &
r;;& '
.;;' (
IsMatch;;( /
(;;/ 0
end;;0 3
);;3 4
);;4 5
{<< 
Page== 
.== 
ClientScript== !
.==! "!
RegisterStartupScript==" 7
(==7 8
this==8 <
.==< =
GetType=== D
(==D E
)==E F
,==F G
$str==H S
,==S T
$@"==U Xw
j$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid date.'); }}, 1); }});	==X Β
"
==Β Γ
,
==Γ Δ
true
==Ε Ι
)
==Ι Κ
;
==Κ Λ
return>> 
;>> 
}?? 
commentListAA 
.AA 

DataSourceAA "
=AA# $
SearchCommentAA% 2
(AA2 3
falseAA3 8
,AA8 9
keywordAA: A
,AAA B
categoryAAC K
,AAK L
startAAM R
,AAR S
endAAT W
)AAW X
;AAX Y
commentListBB 
.BB 
DataBindBB  
(BB  !
)BB! "
;BB" #
}CC 	
DataSetEE 
SearchCommentEE 
(EE 
boolEE "
	selectAllEE# ,
,EE, -
stringEE. 4
keywordEE5 <
=EE= >
$strEE? A
,EEA B
stringEEC I
categoryEEJ R
=EES T
$strEEU W
,EEW X
stringEEY _
startEE` e
=EEf g
$strEEh t
,EEt u
stringEEv |
end	EE} €
=
EE ‚
$str
EEƒ 
)
EE 
{FF 	
DataSetNN 
datasetNN 
=NN 
newNN !
DataSetNN" )
(NN) *
)NN* +
;NN+ ,
usingOO 
(OO 
SqlConnectionOO  
connOO! %
=OO& '
newOO( +
SqlConnectionOO, 9
(OO9 :
newOO: =
ConfigOO> D
(OOD E
)OOE F
.OOF G
ConectionStringOOG V
)OOV W
)OOW X
{PP 

SqlCommandQQ 
cmdQQ 
=QQ  
newQQ! $

SqlCommandQQ% /
(QQ/ 0
$strQQ0 C
,QQC D
connQQE I
)QQI J
;QQJ K
cmdRR 
.RR 
CommandTypeRR 
=RR  !
CommandTypeRR" -
.RR- .
StoredProcedureRR. =
;RR= >
SqlParameterSS 
paramSS "
=SS# $
cmdSS% (
.SS( )

ParametersSS) 3
.SS3 4
AddWithValueSS4 @
(SS@ A
$strSSA M
,SSM N
	selectAllSSO X
)SSX Y
;SSY Z
SqlParameterTT 
param1TT #
=TT$ %
cmdTT& )
.TT) *

ParametersTT* 4
.TT4 5
AddWithValueTT5 A
(TTA B
$strTTB P
,TTP Q
$numTTR S
)TTS T
;TTT U
SqlParameterUU 
param2UU #
=UU$ %
cmdUU& )
.UU) *

ParametersUU* 4
.UU4 5
AddWithValueUU5 A
(UUA B
$strUUB L
,UUL M
keywordUUN U
)UUU V
;UUV W
SqlParameterVV 
param3VV #
=VV$ %
cmdVV& )
.VV) *

ParametersVV* 4
.VV4 5
AddWithValueVV5 A
(VVA B
$strVVB M
,VVM N
categoryVVO W
)VVW X
;VVX Y
SqlParameterWW 
param4WW #
=WW$ %
cmdWW& )
.WW) *

ParametersWW* 4
.WW4 5
AddWithValueWW5 A
(WWA B
$strWWB J
,WWJ K
startWWL Q
+WWR S
$strWWT _
)WW_ `
;WW` a
SqlParameterXX 
param5XX #
=XX$ %
cmdXX& )
.XX) *

ParametersXX* 4
.XX4 5
AddWithValueXX5 A
(XXA B
$strXXB H
,XXH I
endXXJ M
+XXN O
$strXXP [
)XX[ \
;XX\ ]
SqlDataAdapterYY 
dataAdapterYY *
=YY+ ,
newYY- 0
SqlDataAdapterYY1 ?
(YY? @
cmdYY@ C
)YYC D
;YYD E
dataAdapterZZ 
.ZZ 
FillZZ  
(ZZ  !
datasetZZ! (
,ZZ( )
$strZZ* 2
)ZZ2 3
;ZZ3 4
}[[ 
return]] 
dataset]] 
;]] 
}^^ 	
void`` !
ChangeCommentApproval`` "
(``" #
string``# )
[``) *
]``* +
values``, 2
,``2 3
int``4 7
approval``8 @
)``@ A
{aa 	
usingbb 
(bb 
SqlConnectionbb  
connbb! %
=bb& '
newbb( +
SqlConnectionbb, 9
(bb9 :
newbb: =
Configbb> D
(bbD E
)bbE F
.bbF G
ConectionStringbbG V
)bbV W
)bbW X
{cc 
	DataTabledd 
dtdd 
=dd 
newdd "
	DataTabledd# ,
(dd, -
)dd- .
;dd. /
dtee 
.ee 
Columnsee 
.ee 
Addee 
(ee 
$stree #
,ee# $
typeofee% +
(ee+ ,
stringee, 2
)ee2 3
)ee3 4
;ee4 5
ifff 
(ff 
valuesff 
.ff 
Countff  
(ff  !
)ff! "
!=ff# %
$numff& '
)ff' (
{gg 
foreachhh 
(hh 
stringhh #
strhh$ '
inhh( *
valueshh+ 1
)hh1 2
{ii 
dtjj 
.jj 
Rowsjj 
.jj  
Addjj  #
(jj# $
strjj$ '
)jj' (
;jj( )
}kk 
}ll 

SqlCommandnn 
cmdnn 
=nn  
newnn! $

SqlCommandnn% /
(nn/ 0
$strnn0 M
,nnM N
connnnO S
)nnS T
;nnT U
cmdoo 
.oo 
CommandTypeoo 
=oo  !
CommandTypeoo" -
.oo- .
StoredProcedureoo. =
;oo= >
SqlParameterpp 
parampp "
=pp# $
cmdpp% (
.pp( )

Parameterspp) 3
.pp3 4
AddWithValuepp4 @
(pp@ A
$strppA H
,ppH I
dtppJ L
)ppL M
;ppM N
paramqq 
.qq 
	SqlDbTypeqq 
=qq  !
	SqlDbTypeqq" +
.qq+ ,

Structuredqq, 6
;qq6 7
SqlParameterrr 
param2rr #
=rr$ %
cmdrr& )
.rr) *

Parametersrr* 4
.rr4 5
AddWithValuerr5 A
(rrA B
$strrrB I
,rrI J
approvalrrK S
)rrS T
;rrT U
param2ss 
.ss 
	SqlDbTypess  
=ss! "
	SqlDbTypess# ,
.ss, -
Bitss- 0
;ss0 1
paramtt 
.tt 
TypeNamett 
=tt  
$strtt! .
;tt. /
connuu 
.uu 
Openuu 
(uu 
)uu 
;uu 
cmdvv 
.vv 
ExecuteNonQueryvv #
(vv# $
)vv$ %
;vv% &
connww 
.ww 
Closeww 
(ww 
)ww 
;ww 
}xx 
}yy 	
bool{{ 
ValidateInput{{ 
({{ 
string{{ !
keyword{{" )
,{{) *
string{{+ 1
category{{2 :
,{{: ;
string{{< B
start{{C H
,{{H I
string{{J P
end{{Q T
){{T U
{|| 	
if}} 
(}} 
keyword}} 
.}} 
Trim}} 
(}} 
)}} 
==}} !
$str}}" -
||}}. 0
keyword}}1 8
.}}8 9
Trim}}9 =
(}}= >
)}}> ?
==}}@ B
$str}}C E
)}}E F
return}}G M
false}}N S
;}}S T
string 
[ 
] 

categories 
=  !
new" %
string& ,
[, -
]- .
{/ 0
$str1 B
,B C
$strD N
,N O
$strP Y
}Z [
;[ \
bool
€€ 
valid
€€ 
=
€€ 
false
€€ 
;
€€ 
foreach
 
(
 
string
 
str
 
in
  "

categories
# -
)
- .
{
‚‚ 
if
ƒƒ 
(
ƒƒ 
str
ƒƒ 
==
ƒƒ 
category
ƒƒ #
.
ƒƒ# $
Trim
ƒƒ$ (
(
ƒƒ( )
)
ƒƒ) *
)
ƒƒ* +
valid
ƒƒ, 1
=
ƒƒ2 3
true
ƒƒ4 8
;
ƒƒ8 9
}
„„ 
if
…… 
(
…… 
!
…… 
valid
…… 
)
…… 
return
…… 
false
…… $
;
……$ %
return
‡‡ 
true
‡‡ 
;
‡‡ 
}
 	
	protected
 
void
 
BtnApprove_Click
 '
(
' (
object
( .
sender
/ 5
,
5 6
	EventArgs
7 @
e
A B
)
B C
{
‹‹ 	
try
 
{
 
List
 
<
 
string
 
>
 
uids
 !
=
" #
new
$ '
List
( ,
<
, -
string
- 3
>
3 4
(
4 5
)
5 6
;
6 7
foreach
 
(
 
RepeaterItem
 %
item
& *
in
+ -
commentList
. 9
.
9 :
Items
: ?
)
? @
{
 
CheckBox
‘‘ 
cb
‘‘ 
=
‘‘  !
(
‘‘" #
CheckBox
‘‘# +
)
‘‘+ ,
item
‘‘, 0
.
‘‘0 1
FindControl
‘‘1 <
(
‘‘< =
$str
‘‘= N
)
‘‘N O
;
‘‘O P
if
’’ 
(
’’ 
cb
’’ 
.
’’ 
Checked
’’ "
)
’’" #
{
““ 
HiddenField
”” #
	commentID
””$ -
=
””. /
(
””0 1
HiddenField
””1 <
)
””< =
item
””= A
.
””A B
FindControl
””B M
(
””M N
$str
””N Y
)
””Y Z
;
””Z [
uids
•• 
.
•• 
Add
••  
(
••  !
	commentID
••! *
.
••* +
Value
••+ 0
)
••0 1
;
••1 2
}
–– 
}
—— #
ChangeCommentApproval
™™ %
(
™™% &
uids
™™& *
.
™™* +
ToArray
™™+ 2
(
™™2 3
)
™™3 4
,
™™4 5
$num
™™6 7
)
™™7 8
;
™™8 9
DisplayAllComment
 !
(
! "
true
" &
)
& '
;
' (
ApprovedComment
 
otherUC
  '
=
( )
this
* .
.
. /
Page
/ 3
.
3 4
FindControl
4 ?
(
? @
$str
@ S
)
S T
as
U W
ApprovedComment
X g
;
g h
otherUC
 
.
 
DisplayAllComment
 )
(
) *
false
* /
)
/ 0
;
0 1
DeletedComment
 
otherUC2
 '
=
( )
this
* .
.
. /
Page
/ 3
.
3 4
FindControl
4 ?
(
? @
$str
@ R
)
R S
as
T V
DeletedComment
W e
;
e f
otherUC2
 
.
 
DisplayAllComment
 *
(
* +
false
+ 0
)
0 1
;
1 2
}
   
catch
΅΅ 
(
΅΅ 
	Exception
΅΅ 
ex
΅΅ 
)
΅΅  
{
ΆΆ 
Page
££ 
.
££ 
ClientScript
££ !
.
££! "#
RegisterStartupScript
££" 7
(
££7 8
this
££8 <
.
££< =
GetType
££= D
(
££D E
)
££E F
,
££F G
$str
££H O
,
££O P
$@"
££Q T>
/$(document).ready(function () {{ alert('Error: ££T ƒ
{££ƒ „
ex££„ †
.££† ‡
Message££‡ 
}££ 
') }});££ –
"££– —
,££— 
true££™ 
)££ 
;££ 
}
¤¤ 
}
¥¥ 	
	protected
§§ 
void
§§ 
BtnReject_Click
§§ &
(
§§& '
object
§§' -
sender
§§. 4
,
§§4 5
	EventArgs
§§6 ?
e
§§@ A
)
§§A B
{
¨¨ 	
try
©© 
{
ªª 
List
«« 
<
«« 
string
«« 
>
«« 
uids
«« !
=
««" #
new
««$ '
List
««( ,
<
««, -
string
««- 3
>
««3 4
(
««4 5
)
««5 6
;
««6 7
foreach
¬¬ 
(
¬¬ 
RepeaterItem
¬¬ %
item
¬¬& *
in
¬¬+ -
commentList
¬¬. 9
.
¬¬9 :
Items
¬¬: ?
)
¬¬? @
{
­­ 
CheckBox
®® 
cb
®® 
=
®®  !
(
®®" #
CheckBox
®®# +
)
®®+ ,
item
®®, 0
.
®®0 1
FindControl
®®1 <
(
®®< =
$str
®®= N
)
®®N O
;
®®O P
if
―― 
(
―― 
cb
―― 
.
―― 
Checked
―― "
)
――" #
{
°° 
HiddenField
±± #
	commentID
±±$ -
=
±±. /
(
±±0 1
HiddenField
±±1 <
)
±±< =
item
±±= A
.
±±A B
FindControl
±±B M
(
±±M N
$str
±±N Y
)
±±Y Z
;
±±Z [
uids
²² 
.
²² 
Add
²²  
(
²²  !
	commentID
²²! *
.
²²* +
Value
²²+ 0
)
²²0 1
;
²²1 2
}
³³ 
}
΄΄ #
ChangeCommentApproval
¶¶ %
(
¶¶% &
uids
¶¶& *
.
¶¶* +
ToArray
¶¶+ 2
(
¶¶2 3
)
¶¶3 4
,
¶¶4 5
$num
¶¶6 7
)
¶¶7 8
;
¶¶8 9
DisplayAllComment
·· !
(
··! "
true
··" &
)
··& '
;
··' (
ApprovedComment
ΉΉ 
otherUC
ΉΉ  '
=
ΉΉ( )
this
ΉΉ* .
.
ΉΉ. /
Page
ΉΉ/ 3
.
ΉΉ3 4
FindControl
ΉΉ4 ?
(
ΉΉ? @
$str
ΉΉ@ S
)
ΉΉS T
as
ΉΉU W
ApprovedComment
ΉΉX g
;
ΉΉg h
otherUC
ΊΊ 
.
ΊΊ 
DisplayAllComment
ΊΊ )
(
ΊΊ) *
false
ΊΊ* /
)
ΊΊ/ 0
;
ΊΊ0 1
DeletedComment
»» 
otherUC2
»» '
=
»»( )
this
»»* .
.
»». /
Page
»»/ 3
.
»»3 4
FindControl
»»4 ?
(
»»? @
$str
»»@ R
)
»»R S
as
»»T V
DeletedComment
»»W e
;
»»e f
otherUC2
ΌΌ 
.
ΌΌ 
DisplayAllComment
ΌΌ *
(
ΌΌ* +
false
ΌΌ+ 0
)
ΌΌ0 1
;
ΌΌ1 2
}
½½ 
catch
ΎΎ 
(
ΎΎ 
	Exception
ΎΎ 
ex
ΎΎ 
)
ΎΎ  
{
ΏΏ 
Page
ΐΐ 
.
ΐΐ 
ClientScript
ΐΐ !
.
ΐΐ! "#
RegisterStartupScript
ΐΐ" 7
(
ΐΐ7 8
this
ΐΐ8 <
.
ΐΐ< =
GetType
ΐΐ= D
(
ΐΐD E
)
ΐΐE F
,
ΐΐF G
$str
ΐΐH O
,
ΐΐO P
$@"
ΐΐQ T>
/$(document).ready(function () {{ alert('Error: ΐΐT ƒ
{ΐΐƒ „
exΐΐ„ †
.ΐΐ† ‡
Messageΐΐ‡ 
}ΐΐ 
') }});ΐΐ –
"ΐΐ– —
,ΐΐ— 
trueΐΐ™ 
)ΐΐ 
;ΐΐ 
}
ΑΑ 
}
ΒΒ 	
	protected
ΔΔ 
void
ΔΔ #
BtnSearchByDate_Click
ΔΔ ,
(
ΔΔ, -
object
ΔΔ- 3
sender
ΔΔ4 :
,
ΔΔ: ;
	EventArgs
ΔΔ< E
e
ΔΔF G
)
ΔΔG H
{
ΕΕ 	
if
ΖΖ 
(
ΖΖ 

IsPostBack
ΖΖ 
)
ΖΖ 
{
ΗΗ 
DisplayComment
ΘΘ 
(
ΘΘ 
Keyword
ΘΘ &
.
ΘΘ& '
Text
ΘΘ' +
,
ΘΘ+ ,
CategoryList
ΘΘ- 9
.
ΘΘ9 :
Text
ΘΘ: >
,
ΘΘ> ?
DatePickerStart
ΘΘ@ O
.
ΘΘO P
Text
ΘΘP T
,
ΘΘT U
DatePickerEnd
ΘΘV c
.
ΘΘc d
Text
ΘΘd h
,
ΘΘh i
true
ΘΘj n
)
ΘΘn o
;
ΘΘo p
ApprovedComment
ΙΙ 
otherUC
ΙΙ  '
=
ΙΙ( )
this
ΙΙ* .
.
ΙΙ. /
Page
ΙΙ/ 3
.
ΙΙ3 4
FindControl
ΙΙ4 ?
(
ΙΙ? @
$str
ΙΙ@ S
)
ΙΙS T
as
ΙΙU W
ApprovedComment
ΙΙX g
;
ΙΙg h
otherUC
ΚΚ 
.
ΚΚ 
DisplayAllComment
ΚΚ )
(
ΚΚ) *
false
ΚΚ* /
)
ΚΚ/ 0
;
ΚΚ0 1
DeletedComment
ΛΛ 
otherUC2
ΛΛ '
=
ΛΛ( )
this
ΛΛ* .
.
ΛΛ. /
Page
ΛΛ/ 3
.
ΛΛ3 4
FindControl
ΛΛ4 ?
(
ΛΛ? @
$str
ΛΛ@ R
)
ΛΛR S
as
ΛΛT V
DeletedComment
ΛΛW e
;
ΛΛe f
otherUC2
ΜΜ 
.
ΜΜ 
DisplayAllComment
ΜΜ *
(
ΜΜ* +
false
ΜΜ+ 0
)
ΜΜ0 1
;
ΜΜ1 2
}
ΝΝ 
}
ΞΞ 	
	protected
ΠΠ 
void
ΠΠ 
BtnShowAll_Click
ΠΠ '
(
ΠΠ' (
object
ΠΠ( .
sender
ΠΠ/ 5
,
ΠΠ5 6
	EventArgs
ΠΠ7 @
e
ΠΠA B
)
ΠΠB C
{
ΡΡ 	
if
ÒÒ 
(
ÒÒ 

IsPostBack
ÒÒ 
)
ÒÒ 
{
ΣΣ 
try
ΤΤ 
{
ΥΥ 
DisplayAllComment
ΦΦ %
(
ΦΦ% &
true
ΦΦ& *
)
ΦΦ* +
;
ΦΦ+ ,
ApprovedComment
ΧΧ #
otherUC
ΧΧ$ +
=
ΧΧ, -
this
ΧΧ. 2
.
ΧΧ2 3
Page
ΧΧ3 7
.
ΧΧ7 8
FindControl
ΧΧ8 C
(
ΧΧC D
$str
ΧΧD W
)
ΧΧW X
as
ΧΧY [
ApprovedComment
ΧΧ\ k
;
ΧΧk l
otherUC
ΨΨ 
.
ΨΨ 
DisplayAllComment
ΨΨ -
(
ΨΨ- .
false
ΨΨ. 3
)
ΨΨ3 4
;
ΨΨ4 5
DeletedComment
ΩΩ "
otherUC2
ΩΩ# +
=
ΩΩ, -
this
ΩΩ. 2
.
ΩΩ2 3
Page
ΩΩ3 7
.
ΩΩ7 8
FindControl
ΩΩ8 C
(
ΩΩC D
$str
ΩΩD V
)
ΩΩV W
as
ΩΩX Z
DeletedComment
ΩΩ[ i
;
ΩΩi j
otherUC2
ΪΪ 
.
ΪΪ 
DisplayAllComment
ΪΪ .
(
ΪΪ. /
false
ΪΪ/ 4
)
ΪΪ4 5
;
ΪΪ5 6
}
ΫΫ 
catch
άά 
(
άά 
	Exception
άά  
ex
άά! #
)
άά# $
{
έέ 
Page
ήή 
.
ήή 
ClientScript
ήή %
.
ήή% &#
RegisterStartupScript
ήή& ;
(
ήή; <
this
ήή< @
.
ήή@ A
GetType
ήήA H
(
ήήH I
)
ήήI J
,
ήήJ K
$str
ήήL R
,
ήήR S
$@"
ήήT W>
/$(document).ready(function () {{ alert('Error: ήήW †
{ήή† ‡
exήή‡ ‰
.ήή‰ 
Messageήή ‘
}ήή‘ ’
') }});ήή’ ™
"ήή™ 
,ήή ›
trueήή  
)ήή  ΅
;ήή΅ Ά
}
ίί 
}
ΰΰ 
}
αα 	
}
ββ 
}γγ ΊN
cC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\UserControl\TestDashboardAll.ascx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
UserControl9 D
{ 
public 

partial 
class 
TestDashboardAll )
:* +
System, 2
.2 3
Web3 6
.6 7
UI7 9
.9 :
UserControl: E
{ 
public 
bool 
	FileExist 
; 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 
! 

IsPostBack 
) 
{ $
DisplayUnapprovedComment (
(( )
)) *
;* +
} 
} 	
void   "
DisplayApprovedComment   #
(  # $
)  $ %
{!! 	
using"" 
("" 
SqlConnection""  
conn""! %
=""& '
new""( +
SqlConnection"", 9
(""9 :
new"": =
Config""> D
(""D E
)""E F
.""F G
ConectionString""G V
)""V W
)""W X
{## 

SqlCommand$$ 
cmd$$ 
=$$  
new$$! $

SqlCommand$$% /
($$/ 0
$str$$0 J
,$$J K
conn$$L P
)$$P Q
;$$Q R
cmd%% 
.%% 
CommandType%% 
=%%  !
CommandType%%" -
.%%- .
StoredProcedure%%. =
;%%= >
SqlDataAdapter&& 
dataAdapter&& *
=&&+ ,
new&&- 0
SqlDataAdapter&&1 ?
(&&? @
cmd&&@ C
)&&C D
;&&D E
DataSet'' 
ds'' 
='' 
new''  
DataSet''! (
(''( )
)'') *
;''* +
dataAdapter(( 
.(( 
Fill((  
(((  !
ds((! #
,((# $
$str((% )
)(() *
;((* +
	repeater1)) 
.)) 

DataSource)) $
=))% &
ds))' )
.))) *
Tables))* 0
[))0 1
$str))1 5
]))5 6
;))6 7
	repeater1** 
.** 
DataBind** "
(**" #
)**# $
;**$ %
}++ 
},, 	
void.. $
DisplayUnapprovedComment.. %
(..% &
)..& '
{// 	
using00 
(00 
SqlConnection00  
conn00! %
=00& '
new00( +
SqlConnection00, 9
(009 :
new00: =
Config00> D
(00D E
)00E F
.00F G
ConectionString00G V
)00V W
)00W X
{11 

SqlCommand22 
cmd22 
=22  
new22! $

SqlCommand22% /
(22/ 0
$str220 L
,22L M
conn22N R
)22R S
;22S T
cmd33 
.33 
CommandType33 
=33  !
CommandType33" -
.33- .
StoredProcedure33. =
;33= >
SqlDataAdapter44 
dataAdapter44 *
=44+ ,
new44- 0
SqlDataAdapter441 ?
(44? @
cmd44@ C
)44C D
;44D E
DataSet55 
ds55 
=55 
new55  
DataSet55! (
(55( )
)55) *
;55* +
dataAdapter66 
.66 
Fill66  
(66  !
ds66! #
,66# $
$str66% )
)66) *
;66* +
	repeater177 
.77 

DataSource77 $
=77% &
ds77' )
.77) *
Tables77* 0
[770 1
$str771 5
]775 6
;776 7
	repeater188 
.88 
DataBind88 "
(88" #
)88# $
;88$ %
}99 
}:: 	
	protected<< 
void<< 
ApproveComment<< %
(<<% &
string<<& ,
[<<, -
]<<- .
values<</ 5
)<<5 6
{== 	
using>> 
(>> 
SqlConnection>>  
conn>>! %
=>>& '
new>>( +
SqlConnection>>, 9
(>>9 :
new>>: =
Config>>> D
(>>D E
)>>E F
.>>F G
ConectionString>>G V
)>>V W
)>>W X
{?? 
	DataTable@@ 
dt@@ 
=@@ 
new@@ "
	DataTable@@# ,
(@@, -
)@@- .
;@@. /
dtAA 
.AA 
ColumnsAA 
.AA 
AddAA 
(AA 
$strAA #
,AA# $
typeofAA% +
(AA+ ,
stringAA, 2
)AA2 3
)AA3 4
;AA4 5
ifBB 
(BB 
valuesBB 
.BB 
CountBB 
(BB  
)BB  !
!=BB" $
$numBB% &
)BB& '
{CC 
foreachDD 
(DD 
stringDD "
strDD# &
inDD' )
valuesDD* 0
)DD0 1
{EE 
dtFF 
.FF 
RowsFF 
.FF  
AddFF  #
(FF# $
strFF$ '
)FF' (
;FF( )
}GG 
}HH 
elseII 
{JJ 
dtKK 
.KK 
RowsKK 
.KK 
AddKK 
(KK  
$strKK  F
)KKF G
;KKG H
dtLL 
.LL 
RowsLL 
.LL 
AddLL 
(LL  
$strLL  F
)LLF G
;LLG H
}MM 

SqlCommandNN 
cmdNN 
=NN  
newNN! $

SqlCommandNN% /
(NN/ 0
$strNN0 H
,NNH I
connNNJ N
)NNN O
;NNO P
cmdOO 
.OO 
CommandTypeOO 
=OO  !
CommandTypeOO" -
.OO- .
StoredProcedureOO. =
;OO= >
SqlParameterPP 
paramPP "
=PP# $
cmdPP% (
.PP( )

ParametersPP) 3
.PP3 4
AddWithValuePP4 @
(PP@ A
$strPPA H
,PPH I
dtPPJ L
)PPL M
;PPM N
paramQQ 
.QQ 
	SqlDbTypeQQ 
=QQ  !
	SqlDbTypeQQ" +
.QQ+ ,

StructuredQQ, 6
;QQ6 7
paramRR 
.RR 
TypeNameRR 
=RR  
$strRR! .
;RR. /
connSS 
.SS 
OpenSS 
(SS 
)SS 
;SS 
cmdTT 
.TT 
ExecuteNonQueryTT #
(TT# $
)TT$ %
;TT% &
connUU 
.UU 
CloseUU 
(UU 
)UU 
;UU 
}VV 
}WW 	
voidYY 
DisapproveCommentYY 
(YY 
stringYY %
[YY% &
]YY& '
valuesYY( .
)YY. /
{ZZ 	
using[[ 
([[ 
SqlConnection[[  
conn[[! %
=[[& '
new[[( +
SqlConnection[[, 9
([[9 :
new[[: =
Config[[> D
([[D E
)[[E F
.[[F G
ConectionString[[G V
)[[V W
)[[W X
{\\ 
	DataTable]] 
dt]] 
=]] 
new]] "
	DataTable]]# ,
(]], -
)]]- .
;]]. /
dt^^ 
.^^ 
Columns^^ 
.^^ 
Add^^ 
(^^ 
$str^^ #
,^^# $
typeof^^% +
(^^+ ,
string^^, 2
)^^2 3
)^^3 4
;^^4 5
if__ 
(__ 
values__ 
.__ 
Count__  
(__  !
)__! "
!=__# %
$num__& '
)__' (
{`` 
foreachaa 
(aa 
stringaa #
straa$ '
inaa( *
valuesaa+ 1
)aa1 2
{bb 
dtcc 
.cc 
Rowscc 
.cc  
Addcc  #
(cc# $
strcc$ '
)cc' (
;cc( )
}dd 
}ee 

SqlCommandgg 
cmdgg 
=gg  
newgg! $

SqlCommandgg% /
(gg/ 0
$strgg0 K
,ggK L
connggM Q
)ggQ R
;ggR S
cmdhh 
.hh 
CommandTypehh 
=hh  !
CommandTypehh" -
.hh- .
StoredProcedurehh. =
;hh= >
SqlParameterii 
paramii "
=ii# $
cmdii% (
.ii( )

Parametersii) 3
.ii3 4
AddWithValueii4 @
(ii@ A
$striiA H
,iiH I
dtiiJ L
)iiL M
;iiM N
paramjj 
.jj 
	SqlDbTypejj 
=jj  !
	SqlDbTypejj" +
.jj+ ,

Structuredjj, 6
;jj6 7
paramkk 
.kk 
TypeNamekk 
=kk  
$strkk! .
;kk. /
connll 
.ll 
Openll 
(ll 
)ll 
;ll 
cmdmm 
.mm 
ExecuteNonQuerymm #
(mm# $
)mm$ %
;mm% &
connnn 
.nn 
Closenn 
(nn 
)nn 
;nn 
}oo 
}pp 	
	protectedrr 
voidrr 
BtnDisapprove_Clickrr *
(rr* +
objectrr+ 1
senderrr2 8
,rr8 9
	EventArgsrr: C
errD E
)rrE F
{ss 	
DisapproveCommenttt 
(tt 
newtt !
stringtt" (
[tt( )
]tt) *
{tt+ ,
$strtt- S
,ttS T
$strttU {
}tt| }
)tt} ~
;tt~ 
}uu 	
}vv 
}ww ÿ‡
`C:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\UserControl\BulkUploadAll.ascx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
UserControl9 D
{ 
public 

partial 
class 
BulkUploadAll &
:' (
System) /
./ 0
Web0 3
.3 4
UI4 6
.6 7
UserControl7 B
{ 
	DataTable 
Data 
; 
static 
string 
ServerMapPath #
;# $
public 
bool 
	FileExist 
; 
public 
static 
User 
GetUser "
(" #
string# )

domainName* 4
,4 5
string6 <
userName= E
)E F
{ 	
if 
( 
User 
. 
Exists 
( 

domainName &
+' (
$str) -
+. /
userName0 8
)8 9
)9 :
{ 
return 
User 
. 
FromName $
($ %

domainName% /
+0 1
$str2 6
+7 8
userName9 A
,A B
trueC G
)G H
;H I
} 
return 
null 
; 
} 	
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if99 
(99 
!99 

IsPostBack99 
)99 
{:: #
LastUploadBranchReguler;; '
.;;' (
Text;;( ,
=;;- .
$str;;/ @
+;;A B
GetLastUpload;;C P
(;;P Q
$str;;Q b
);;b c
;;;c d#
LastUploadBranchPremier<< '
.<<' (
Text<<( ,
=<<- .
$str<</ @
+<<A B
GetLastUpload<<C P
(<<P Q
$str<<Q j
)<<j k
;<<k l#
LastUploadBranchSyariah== '
.==' (
Text==( ,
===- .
$str==/ @
+==A B
GetLastUpload==C P
(==P Q
$str==Q j
)==j k
;==k l*
LastUploadBranchWeekendBanking>> .
.>>. /
Text>>/ 3
=>>4 5
$str>>6 G
+>>H I
GetLastUpload>>J W
(>>W X
$str>>X y
)>>y z
;>>z {
LastUploadATM?? 
.?? 
Text?? "
=??# $
$str??% 6
+??7 8
GetLastUpload??9 F
(??F G
$str??G U
)??U V
;??V W
LastUploadPerumahan@@ #
.@@# $
Text@@$ (
=@@) *
$str@@+ <
+@@= >
GetLastUpload@@? L
(@@L M
$str@@M X
)@@X Y
;@@Y Z
LastUploadReksadanaAA #
.AA# $
TextAA$ (
=AA) *
$strAA+ <
+AA= >
GetLastUploadAA? L
(AAL M
$strAAM X
)AAX Y
;AAY Z
LastUploadListMobilBB #
.BB# $
TextBB$ (
=BB) *
$strBB+ <
+BB= >
GetLastUploadBB? L
(BBL M
$strBBM S
)BBS T
;BBT U
LastUploadListMotorCC #
.CC# $
TextCC$ (
=CC) *
$strCC+ <
+CC= >
GetLastUploadCC? L
(CCL M
$strCCM Y
)CCY Z
;CCZ [
LastUploadRateADDMDD "
.DD" #
TextDD# '
=DD( )
$strDD* ;
+DD< =
GetLastUploadDD> K
(DDK L
$strDDL W
)DDW X
;DDX Y,
 LastUploadRateExtentionInsuranceEE 0
.EE0 1
TextEE1 5
=EE6 7
$strEE8 I
+EEJ K
GetLastUploadEEL Y
(EEY Z
$strEEZ t
)EEt u
;EEu v&
LastUploadInsuranceAllRiskFF *
.FF* +
TextFF+ /
=FF0 1
$strFF2 C
+FFD E
GetLastUploadFFF S
(FFS T
$strFFT ^
)FF^ _
;FF_ `!
LastUploadTJHCoverageGG %
.GG% &
TextGG& *
=GG+ ,
$strGG- >
+GG? @
GetLastUploadGGA N
(GGN O
$strGGO ]
)GG] ^
;GG^ _
LastUploadKodePosHH !
.HH! "
TextHH" &
=HH' (
$strHH) :
+HH; <
GetLastUploadHH= J
(HHJ K
$strHHK T
)HHT U
;HHU V!
LastUploadBidangUsahaII %
.II% &
TextII& *
=II+ ,
$strII- >
+II? @
GetLastUploadIIA N
(IIN O
$strIIO \
)II\ ]
;II] ^$
LastUploadJenisPekerjaanJJ (
.JJ( )
TextJJ) -
=JJ. /
$strJJ0 A
+JJB C
GetLastUploadJJD Q
(JJQ R
$strJJR b
)JJb c
;JJc d!
LastUploadVoucherCodeKK %
.KK% &
TextKK& *
=KK+ ,
$strKK- >
+KK? @
GetLastUploadKKA N
(KKN O
$strKKO Y
)KKY Z
;KKZ [)
LastUploadBusinessVoucherCodeLL -
.LL- .
TextLL. 2
=LL3 4
$strLL5 F
+LLG H
GetLastUploadLLI V
(LLV W
$strLLW i
)LLi j
;LLj k-
!LastUploadBusinessVoucherCodeNoteMM 1
.MM1 2
TextMM2 6
=MM7 8
$strMM9 J
+MMK L
GetLastUploadMMM Z
(MMZ [
$strMM[ m
)MMm n
;MMn o+
LastUploadCreditCardVoucherCodeNN /
.NN/ 0
TextNN0 4
=NN5 6
$strNN7 H
+NNI J
GetLastUploadNNK X
(NNX Y
$strNNY m
)NNm n
;NNn o/
#LastUploadCreditCardVoucherCodeNoteOO 3
.OO3 4
TextOO4 8
=OO9 :
$strOO; L
+OOM N
GetLastUploadOOO \
(OO\ ]
$strOO] q
)OOq r
;OOr s6
*LastUploadMortgageMultifunctionVoucherCodePP :
.PP: ;
TextPP; ?
=PP@ A
$strPPB S
+PPT U
GetLastUploadPPV c
(PPc d
$str	PPd ƒ
)
PPƒ „
;
PP„ …:
.LastUploadMortgageMultifunctionVoucherCodeNoteQQ >
.QQ> ?
TextQQ? C
=QQD E
$strQQF W
+QQX Y
GetLastUploadQQZ g
(QQg h
$str	QQh ‡
)
QQ‡ 
;
QQ ‰%
LastUploadLoanVoucherCodeRR )
.RR) *
TextRR* .
=RR/ 0
$strRR1 B
+RRC D
GetLastUploadRRE R
(RRR S
$strRRS a
)RRa b
;RRb c)
LastUploadLoanVoucherCodeNoteSS -
.SS- .
TextSS. 2
=SS3 4
$strSS5 F
+SSG H
GetLastUploadSSI V
(SSV W
$strSSW e
)SSe f
;SSf g'
LastUploadSavingVoucherCodeTT +
.TT+ ,
TextTT, 0
=TT1 2
$strTT3 D
+TTE F
GetLastUploadTTG T
(TTT U
$strTTU e
)TTe f
;TTf g+
LastUploadSavingVoucherCodeNoteUU /
.UU/ 0
TextUU0 4
=UU5 6
$strUU7 H
+UUI J
GetLastUploadUUK X
(UUX Y
$strUUY i
)UUi j
;UUj k(
LastUploadSyariahVoucherCodeVV ,
.VV, -
TextVV- 1
=VV2 3
$strVV4 E
+VVF G
GetLastUploadVVH U
(VVU V
$strVVV g
)VVg h
;VVh i,
 LastUploadSyariahVoucherCodeNoteWW 0
.WW0 1
TextWW1 5
=WW6 7
$strWW8 I
+WWJ K
GetLastUploadWWL Y
(WWY Z
$strWWZ k
)WWk l
;WWl m
fuBulkUploadYY 
.YY 

AttributesYY '
[YY' (
$strYY( 2
]YY2 3
=YY4 5
$strYY6 U
;YYU V%
fuBulkUploadBranchReguler\\ )
.\\) *

Attributes\\* 4
[\\4 5
$str\\5 ?
]\\? @
=\\A B
$str\\C ]
;\\] ^%
fuBulkUploadBranchPremier]] )
.]]) *

Attributes]]* 4
[]]4 5
$str]]5 ?
]]]? @
=]]A B
$str]]C ]
;]]] ^%
fuBulkUploadBranchSyariah^^ )
.^^) *

Attributes^^* 4
[^^4 5
$str^^5 ?
]^^? @
=^^A B
$str^^C ]
;^^] ^,
 fuBulkUploadBranchWeekendBanking__ 0
.__0 1

Attributes__1 ;
[__; <
$str__< F
]__F G
=__H I
$str__J d
;__d e
fuBulkUploadATM`` 
.``  

Attributes``  *
[``* +
$str``+ 5
]``5 6
=``7 8
$str``9 S
;``S T!
fuBulkUploadPerumahancc %
.cc% &

Attributescc& 0
[cc0 1
$strcc1 ;
]cc; <
=cc= >
$strcc? Y
;ccY Z!
fuBulkUploadReksadanaff %
.ff% &

Attributesff& 0
[ff0 1
$strff1 ;
]ff; <
=ff= >
$strff? Y
;ffY Z!
fuBulkUploadListMobilii %
.ii% &

Attributesii& 0
[ii0 1
$strii1 ;
]ii; <
=ii= >
$strii? Y
;iiY Z!
fuBulkUploadListMotorjj %
.jj% &

Attributesjj& 0
[jj0 1
$strjj1 ;
]jj; <
=jj= >
$strjj? Y
;jjY Z 
fuBulkUploadRateADDMkk $
.kk$ %

Attributeskk% /
[kk/ 0
$strkk0 :
]kk: ;
=kk< =
$strkk> X
;kkX Y.
"fuBulkUploadRateExtentionInsurancell 2
.ll2 3

Attributesll3 =
[ll= >
$strll> H
]llH I
=llJ K
$strllL f
;llf g(
fuBulkUploadInsuranceAllRiskmm ,
.mm, -

Attributesmm- 7
[mm7 8
$strmm8 B
]mmB C
=mmD E
$strmmF `
;mm` a#
fuBulkUploadTJHCoveragenn '
.nn' (

Attributesnn( 2
[nn2 3
$strnn3 =
]nn= >
=nn? @
$strnnA [
;nn[ \
fuBulkUploadKodePosqq #
.qq# $

Attributesqq$ .
[qq. /
$strqq/ 9
]qq9 :
=qq; <
$strqq= W
;qqW X#
fuBulkUploadBidangUsaharr '
.rr' (

Attributesrr( 2
[rr2 3
$strrr3 =
]rr= >
=rr? @
$strrrA [
;rr[ \&
fuBulkUploadJenisPekerjaanss *
.ss* +

Attributesss+ 5
[ss5 6
$strss6 @
]ss@ A
=ssB C
$strssD ^
;ss^ _#
fuBulkUploadVoucherCodevv '
.vv' (

Attributesvv( 2
[vv2 3
$strvv3 =
]vv= >
=vv? @
$strvvA [
;vv[ \+
fuBulkUploadBusinessVoucherCodeww /
.ww/ 0

Attributesww0 :
[ww: ;
$strww; E
]wwE F
=wwG H
$strwwI c
;wwc d'
fuBulkUploadLoanVoucherCodexx +
.xx+ ,

Attributesxx, 6
[xx6 7
$strxx7 A
]xxA B
=xxC D
$strxxE _
;xx_ `8
,fuBulkUploadMortgageMultifunctionVoucherCodeyy <
.yy< =

Attributesyy= G
[yyG H
$stryyH R
]yyR S
=yyT U
$stryyV p
;yyp q-
!fuBulkUploadCreditCardVoucherCodezz 1
.zz1 2

Attributeszz2 <
[zz< =
$strzz= G
]zzG H
=zzI J
$strzzK e
;zze f)
fuBulkUploadSavingVoucherCode{{ -
.{{- .

Attributes{{. 8
[{{8 9
$str{{9 C
]{{C D
={{E F
$str{{G a
;{{a b*
fuBulkUploadSyariahVoucherCode|| .
.||. /

Attributes||/ 9
[||9 :
$str||: D
]||D E
=||F G
$str||H b
;||b c
string 
script 
= 
$str  n
;n o
Page
€€ 
.
€€ 
ClientScript
€€ !
.
€€! "#
RegisterStartupScript
€€" 7
(
€€7 8
this
€€8 <
.
€€< =
GetType
€€= D
(
€€D E
)
€€E F
,
€€F G
$str
€€H N
,
€€N O
script
€€P V
,
€€V W
true
€€X \
)
€€\ ]
;
€€] ^
}
‚‚ 
}
ƒƒ 	
	protected
…… 
void
…… 
btnUpload_Click
…… &
(
……& '
object
……' -
sender
……. 4
,
……4 5
	EventArgs
……6 ?
e
……@ A
)
……A B
{
†† 	
DirectoryInfo
‹‹ 
dir
‹‹ 
=
‹‹ 
null
‹‹  $
;
‹‹$ %
string
 
	extension
 
,
 
fileName
 &
=
' (
string
) /
.
/ 0
Empty
0 5
;
5 6
string
 
path
 
=
 
string
  
.
  !
Empty
! &
;
& '
string
 
	tableName
 
=
 
string
 %
.
% &
Empty
& +
;
+ ,
string
 
getError
 
=
 
string
 $
.
$ %
Empty
% *
;
* +
DataSet
 
dataSet
 
=
 
new
 !
DataSet
" )
(
) *
)
* +
;
+ ,
try
›› 
{
 
if
 
(
 
fuBulkUpload
  
.
  !
HasFile
! (
)
( )
{
 
string
 

folderName
 %
=
& '
Guid
( ,
.
, -
NewGuid
- 4
(
4 5
)
5 6
.
6 7
ToString
7 ?
(
? @
)
@ A
;
A B
string
΅΅ 

folderpath
΅΅ %
=
΅΅& '
Server
΅΅( .
.
΅΅. /
MapPath
΅΅/ 6
(
΅΅6 7
$str
΅΅7 S
+
΅΅T U

folderName
΅΅V `
+
΅΅a b
$str
΅΅c f
)
΅΅f g
;
΅΅g h
string
ΆΆ 
[
ΆΆ 
]
ΆΆ 
templatePathFiles
ΆΆ .
=
ΆΆ/ 0
	Directory
ΆΆ1 :
.
ΆΆ: ;
GetFiles
ΆΆ; C
(
ΆΆC D
Server
ΆΆD J
.
ΆΆJ K
MapPath
ΆΆK R
(
ΆΆR S
$str
ΆΆS o
)
ΆΆo p
,
ΆΆp q
$str
ΆΆr y
,
ΆΆy z
SearchOptionΆΆ{ ‡
.ΆΆ‡  
TopDirectoryOnlyΆΆ 
)ΆΆ ™
;ΆΆ™ 
List
££ 
<
££ 
string
££ 
>
££  
templateFiles
££! .
=
££/ 0
new
££1 4
List
££5 9
<
££9 :
string
££: @
>
££@ A
(
££A B
)
££B C
;
££C D
foreach
¤¤ 
(
¤¤ 
string
¤¤ #
template
¤¤$ ,
in
¤¤- /
templatePathFiles
¤¤0 A
)
¤¤A B
{
¥¥ 
templateFiles
¦¦ %
.
¦¦% &
Add
¦¦& )
(
¦¦) *
Path
¦¦* .
.
¦¦. /
GetFileName
¦¦/ :
(
¦¦: ;
template
¦¦; C
)
¦¦C D
.
¦¦D E
	Substring
¦¦E N
(
¦¦N O
$num
¦¦O P
,
¦¦P Q
Path
¦¦R V
.
¦¦V W
GetFileName
¦¦W b
(
¦¦b c
template
¦¦c k
)
¦¦k l
.
¦¦l m
LastIndexOf
¦¦m x
(
¦¦x y
$str
¦¦y |
)
¦¦| }
)
¦¦} ~
)
¦¦~ 
;¦¦ €
}
§§ 
ServerMapPath
¨¨ !
=
¨¨" #

folderpath
¨¨$ .
;
¨¨. /
dir
©© 
=
©© 
	Directory
©© #
.
©©# $
CreateDirectory
©©$ 3
(
©©3 4

folderpath
©©4 >
)
©©> ?
;
©©? @
	extension
ªª 
=
ªª 
Path
ªª  $
.
ªª$ %
GetExtension
ªª% 1
(
ªª1 2
fuBulkUpload
ªª2 >
.
ªª> ?
FileName
ªª? G
)
ªªG H
;
ªªH I
fileName
«« 
=
«« 
fuBulkUpload
«« +
.
««+ ,
FileName
««, 4
.
««4 5
	Substring
««5 >
(
««> ?
$num
««? @
,
««@ A
fuBulkUpload
««B N
.
««N O
FileName
««O W
.
««W X
LastIndexOf
««X c
(
««c d
$char
««d g
)
««g h
)
««h i
;
««i j
if
®® 
(
®® 
	extension
®® !
!=
®®" $
$str
®®% +
)
®®+ ,
throw
―― 
new
―― !
FormatException
――" 1
(
――1 2
$str
――2 F
)
――F G
;
――G H
if
°° 
(
°° 
!
°° 
templateFiles
°° &
.
°°& '
Contains
°°' /
(
°°/ 0
fileName
°°0 8
)
°°8 9
)
°°9 :
{
±± 
throw
²² 
new
²² !
	Exception
²²" +
(
²²+ ,
$str
²², j
)
²²j k
;
²²k l
}
³³ 
path
΄΄ 
=
΄΄ 

folderpath
΄΄ %
+
΄΄& '
fuBulkUpload
΄΄( 4
.
΄΄4 5
FileName
΄΄5 =
;
΄΄= >
fuBulkUpload
µµ  
.
µµ  !
SaveAs
µµ! '
(
µµ' (
path
µµ( ,
)
µµ, -
;
µµ- .
Data
·· 
=
·· 
LibraryHelpers
·· )
.
··) *
ConvertCSVToTable
··* ;
(
··; <
path
··< @
)
··@ A
;
··A B
UploadHelpers
ΈΈ !
.
ΈΈ! "
MappedDataToDB
ΈΈ" 0
(
ΈΈ0 1
Data
ΈΈ1 5
,
ΈΈ5 6

folderpath
ΈΈ7 A
.
ΈΈA B
Replace
ΈΈB I
(
ΈΈI J

folderName
ΈΈJ T
,
ΈΈT U
$str
ΈΈV X
)
ΈΈX Y
+
ΈΈZ [
$str
ΈΈ\ _
+
ΈΈ` a
fileName
ΈΈb j
+
ΈΈk l
$str
ΈΈm s
,
ΈΈs t
fileName
ΈΈu }
)
ΈΈ} ~
;
ΈΈ~ 
getError
ΉΉ 
=
ΉΉ 
UploadHelpers
ΉΉ ,
.
ΉΉ, -
GetErrorMessage
ΉΉ- <
(
ΉΉ< =
)
ΉΉ= >
;
ΉΉ> ?
if
»» 
(
»» 
getError
»»  
==
»»! #
$str
»»$ +
)
»»+ ,
{
ΌΌ 
litWarningError
½½ '
.
½½' (
Text
½½( ,
=
½½- .
$str
½½/ m
;
½½m n
Page
ΎΎ 
.
ΎΎ 
ClientScript
ΎΎ )
.
ΎΎ) *'
RegisterOnSubmitStatement
ΎΎ* C
(
ΎΎC D
GetType
ΎΎD K
(
ΎΎK L
)
ΎΎL M
,
ΎΎM N
$str
ΎΎO a
,
ΎΎa b
$str
ΎΎc y
)
ΎΎy z
;
ΎΎz {
}
ΏΏ 
else
ΐΐ 
{
ΑΑ 
Page
ΒΒ 
.
ΒΒ 
ClientScript
ΒΒ )
.
ΒΒ) *'
RegisterOnSubmitStatement
ΒΒ* C
(
ΒΒC D
GetType
ΒΒD K
(
ΒΒK L
)
ΒΒL M
,
ΒΒM N
$str
ΒΒO a
,
ΒΒa b
$str
ΒΒc y
)
ΒΒy z
;
ΒΒz {
}
ΓΓ 
File
ΕΕ 
.
ΕΕ 
Delete
ΕΕ 
(
ΕΕ  
path
ΕΕ  $
)
ΕΕ$ %
;
ΕΕ% &
}
ΖΖ 
}
ΗΗ 
catch
ΘΘ 
(
ΘΘ 
FormatException
ΘΘ "
fx
ΘΘ# %
)
ΘΘ% &
{
ΙΙ 
litAlertError
ΚΚ 
.
ΚΚ 
Text
ΚΚ "
=
ΚΚ# $
fx
ΚΚ% '
.
ΚΚ' (
Message
ΚΚ( /
;
ΚΚ/ 0
Page
ΛΛ 
.
ΛΛ 
ClientScript
ΛΛ !
.
ΛΛ! "#
RegisterStartupScript
ΛΛ" 7
(
ΛΛ7 8
GetType
ΛΛ8 ?
(
ΛΛ? @
)
ΛΛ@ A
,
ΛΛA B
$str
ΛΛC T
,
ΛΛT U
$str
ΛΛV k
,
ΛΛk l
true
ΛΛm q
)
ΛΛq r
;
ΛΛr s
}
ΜΜ 
catch
ΝΝ 
(
ΝΝ 
	Exception
ΝΝ 
ex
ΝΝ 
)
ΝΝ  
{
ΞΞ 
litAlertError
ΟΟ 
.
ΟΟ 
Text
ΟΟ "
=
ΟΟ# $
$str
ΟΟ% (
+
ΟΟ) *
ex
ΟΟ+ -
.
ΟΟ- .
Message
ΟΟ. 5
;
ΟΟ5 6
Page
ΠΠ 
.
ΠΠ 
ClientScript
ΠΠ !
.
ΠΠ! "#
RegisterStartupScript
ΠΠ" 7
(
ΠΠ7 8
GetType
ΠΠ8 ?
(
ΠΠ? @
)
ΠΠ@ A
,
ΠΠA B
$str
ΠΠC T
,
ΠΠT U
$str
ΠΠV k
,
ΠΠk l
true
ΠΠm q
)
ΠΠq r
;
ΠΠr s
}
ΡΡ 
finally
ÒÒ 
{
ΣΣ 
if
ΤΤ 
(
ΤΤ 
!
ΤΤ 
string
ΤΤ 
.
ΤΤ 
IsNullOrEmpty
ΤΤ )
(
ΤΤ) *
path
ΤΤ* .
)
ΤΤ. /
)
ΤΤ/ 0
File
ΥΥ 
.
ΥΥ 
Delete
ΥΥ 
(
ΥΥ  
path
ΥΥ  $
)
ΥΥ$ %
;
ΥΥ% &
dir
ΦΦ 
.
ΦΦ 
Delete
ΦΦ 
(
ΦΦ 
)
ΦΦ 
;
ΦΦ 
}
ΧΧ 
}
ΩΩ 	
	protected
ΫΫ 
void
ΫΫ  
btnXMLUpload_Click
ΫΫ )
(
ΫΫ) *
object
ΫΫ* 0
sender
ΫΫ1 7
,
ΫΫ7 8
	EventArgs
ΫΫ9 B
e
ΫΫC D
)
ΫΫD E
{
άά 	
if
έέ 
(
έέ 
fuXML
έέ 
.
έέ 
HasFile
έέ 
)
έέ 
{
ήή 
try
ίί 
{
ΰΰ 
string
αα 
dirPath
αα "
=
αα# $
Server
αα% +
.
αα+ ,
MapPath
αα, 3
(
αα3 4
$str
αα4 O
)
ααO P
;
ααP Q
if
ββ 
(
ββ 
!
ββ 
	Directory
ββ "
.
ββ" #
Exists
ββ# )
(
ββ) *
dirPath
ββ* 1
)
ββ1 2
)
ββ2 3
{
γγ 
	Directory
δδ !
.
δδ! "
CreateDirectory
δδ" 1
(
δδ1 2
dirPath
δδ2 9
)
δδ9 :
;
δδ: ;
}
εε 
var
ηη 
filePath
ηη  
=
ηη! "
Path
ηη# '
.
ηη' (
Combine
ηη( /
(
ηη/ 0
dirPath
ηη0 7
,
ηη7 8
fuXML
ηη9 >
.
ηη> ?
FileName
ηη? G
)
ηηG H
;
ηηH I
fuXML
ιι 
.
ιι 
SaveAs
ιι  
(
ιι  !
filePath
ιι! )
)
ιι) *
;
ιι* +
Page
κκ 
.
κκ 
ClientScript
κκ %
.
κκ% &#
RegisterStartupScript
κκ& ;
(
κκ; <
GetType
κκ< C
(
κκC D
)
κκD E
,
κκE F
$str
κκG \
,
κκ\ ]
$str
κκ^ w
,
κκw x
true
κκy }
)
κκ} ~
;
κκ~ 
}
λλ 
catch
μμ 
(
μμ 
	Exception
μμ  
)
μμ  !
{
νν 
throw
οο 
;
οο 
}
ππ 
}
ρρ 
}
ςς 	
	protected
ττ 
string
ττ 
GetLastUpload
ττ &
(
ττ& '
string
ττ' -
	_filename
ττ. 7
)
ττ7 8
{
υυ 	
return
φφ 
Library
φφ 
.
φφ 
DAL
φφ 
.
φφ 

DataAccess
φφ )
.
φφ) *
GetItem
φφ* 1
(
φφ1 2
string
φφ2 8
.
φφ8 9
Format
φφ9 ?
(
φφ? @
$strφφ@ Έ
,φφΈ Ή
	_filenameφφΊ Γ
)φφΓ Δ
)φφΔ Ε
.φφΕ Ζ
ReplaceφφΖ Ν
(φφΝ Ξ
$strφφΞ Τ
,φφΤ Υ
$strφφΦ Ψ
)φφΨ Ω
;φφΩ Ϊ
}
χχ 	
	protected
ωω 
void
ωω 

UploadFile
ωω !
(
ωω! "

FileUpload
ωω" ,
fuBulkUpload
ωω- 9
,
ωω9 :
string
ωω; A
	_filename
ωωB K
)
ωωK L
{
ϊϊ 	
Thread
όό 
.
όό 
Sleep
όό 
(
όό 
$num
όό 
)
όό 
;
όό 
DirectoryInfo
ÿÿ 
dir
ÿÿ 
=
ÿÿ 
null
ÿÿ  $
;
ÿÿ$ %
string
€€ 
	extension
€€ 
,
€€ 
fileName
€€ &
=
€€' (
string
€€) /
.
€€/ 0
Empty
€€0 5
;
€€5 6
string
 
path
 
=
 
string
  
.
  !
Empty
! &
;
& '
string
‚‚ 
	tableName
‚‚ 
=
‚‚ 
string
‚‚ %
.
‚‚% &
Empty
‚‚& +
;
‚‚+ ,
string
ƒƒ 
getError
ƒƒ 
=
ƒƒ 
string
ƒƒ $
.
ƒƒ$ %
Empty
ƒƒ% *
;
ƒƒ* +
DataSet
„„ 
dataSet
„„ 
=
„„ 
new
„„ !
DataSet
„„" )
(
„„) *
)
„„* +
;
„„+ ,
try
…… 
{
†† 
if
‡‡ 
(
‡‡ 
fuBulkUpload
‡‡  
.
‡‡  !
HasFile
‡‡! (
)
‡‡( )
{
 
string
‰‰ 

folderName
‰‰ %
=
‰‰& '
Guid
‰‰( ,
.
‰‰, -
NewGuid
‰‰- 4
(
‰‰4 5
)
‰‰5 6
.
‰‰6 7
ToString
‰‰7 ?
(
‰‰? @
)
‰‰@ A
;
‰‰A B
string
‹‹ 

folderpath
‹‹ %
=
‹‹& '
Server
‹‹( .
.
‹‹. /
MapPath
‹‹/ 6
(
‹‹6 7
$str
‹‹7 S
+
‹‹T U

folderName
‹‹V `
+
‹‹a b
$str
‹‹c f
)
‹‹f g
;
‹‹g h
string
 
[
 
]
 
templatePathFiles
 .
=
/ 0
	Directory
1 :
.
: ;
GetFiles
; C
(
C D
Server
D J
.
J K
MapPath
K R
(
R S
$str
S o
)
o p
,
p q
$str
r y
,
y z
SearchOption{ ‡
.‡  
TopDirectoryOnly 
) ™
;™ 
List
 
<
 
string
 
>
  
templateFiles
! .
=
/ 0
new
1 4
List
5 9
<
9 :
string
: @
>
@ A
(
A B
)
B C
;
C D
foreach
 
(
 
string
 #
template
$ ,
in
- /
templatePathFiles
0 A
)
A B
{
 
templateFiles
 %
.
% &
Add
& )
(
) *
Path
* .
.
. /
GetFileName
/ :
(
: ;
template
; C
)
C D
.
D E
	Substring
E N
(
N O
$num
O P
,
P Q
Path
R V
.
V W
GetFileName
W b
(
b c
template
c k
)
k l
.
l m
LastIndexOf
m x
(
x y
$str
y |
)
| }
)
} ~
)
~ 
; €
}
‘‘ 
ServerMapPath
’’ !
=
’’" #

folderpath
’’$ .
;
’’. /
dir
““ 
=
““ 
	Directory
““ #
.
““# $
CreateDirectory
““$ 3
(
““3 4

folderpath
““4 >
)
““> ?
;
““? @
	extension
”” 
=
”” 
Path
””  $
.
””$ %
GetExtension
””% 1
(
””1 2
fuBulkUpload
””2 >
.
””> ?
FileName
””? G
)
””G H
;
””H I
fileName
•• 
=
•• 
fuBulkUpload
•• +
.
••+ ,
FileName
••, 4
.
••4 5
	Substring
••5 >
(
••> ?
$num
••? @
,
••@ A
fuBulkUpload
••B N
.
••N O
FileName
••O W
.
••W X
LastIndexOf
••X c
(
••c d
$char
••d g
)
••g h
)
••h i
;
••i j
if
 
(
 
	extension
 !
!=
" $
$str
% +
)
+ ,
throw
™™ 
new
™™ !
FormatException
™™" 1
(
™™1 2
$str
™™2 F
)
™™F G
;
™™G H
if
 
(
 
	_filename
 !
!=
" $
fileName
% -
)
- .
{
›› 
throw
 
new
 !
	Exception
" +
(
+ ,
$str
, \
+
] ^
	_filename
_ h
+
i j
$strk 
) 
; 
}
 
if
 
(
 
!
 
templateFiles
 &
.
& '
Contains
' /
(
/ 0
fileName
0 8
)
8 9
)
9 :
{
 
throw
   
new
   !
	Exception
  " +
(
  + ,
$str
  , j
)
  j k
;
  k l
}
΅΅ 
path
ΆΆ 
=
ΆΆ 

folderpath
ΆΆ %
+
ΆΆ& '
fuBulkUpload
ΆΆ( 4
.
ΆΆ4 5
FileName
ΆΆ5 =
;
ΆΆ= >
fuBulkUpload
££  
.
££  !
SaveAs
££! '
(
££' (
path
££( ,
)
££, -
;
££- .
Data
¥¥ 
=
¥¥ 
LibraryHelpers
¥¥ )
.
¥¥) *
ConvertCSVToTable
¥¥* ;
(
¥¥; <
path
¥¥< @
)
¥¥@ A
;
¥¥A B
UploadHelpers
¦¦ !
.
¦¦! "
MappedDataToDB
¦¦" 0
(
¦¦0 1
Data
¦¦1 5
,
¦¦5 6

folderpath
¦¦7 A
.
¦¦A B
Replace
¦¦B I
(
¦¦I J

folderName
¦¦J T
,
¦¦T U
$str
¦¦V X
)
¦¦X Y
+
¦¦Z [
$str
¦¦\ _
+
¦¦` a
fileName
¦¦b j
+
¦¦k l
$str
¦¦m s
,
¦¦s t
fileName
¦¦u }
)
¦¦} ~
;
¦¦~ 
getError
§§ 
=
§§ 
UploadHelpers
§§ ,
.
§§, -
GetErrorMessage
§§- <
(
§§< =
)
§§= >
;
§§> ?
if
©© 
(
©© 
getError
©©  
==
©©! #
$str
©©$ +
)
©©+ ,
{
ªª 
litWarningError
«« '
.
««' (
Text
««( ,
=
««- .
$str
««/ m
;
««m n
Page
¬¬ 
.
¬¬ 
ClientScript
¬¬ )
.
¬¬) *#
RegisterStartupScript
¬¬* ?
(
¬¬? @
GetType
¬¬@ G
(
¬¬G H
)
¬¬H I
,
¬¬I J
$str
¬¬K ]
,
¬¬] ^
$str
¬¬_ u
,
¬¬u v
true
¬¬w {
)
¬¬{ |
;
¬¬| }
}
­­ 
else
®® 
{
―― 
fuBulkUpload
°° $
.
°°$ %
Dispose
°°% ,
(
°°, -
)
°°- .
;
°°. /
Page
±± 
.
±± 
ClientScript
±± )
.
±±) *#
RegisterStartupScript
±±* ?
(
±±? @
GetType
±±@ G
(
±±G H
)
±±H I
,
±±I J
$str
±±K ]
,
±±] ^
$str
±±_ u
,
±±u v
true
±±w {
)
±±{ |
;
±±| }
}
²² 
File
΄΄ 
.
΄΄ 
Delete
΄΄ 
(
΄΄  
path
΄΄  $
)
΄΄$ %
;
΄΄% &
}
µµ 
}
¶¶ 
catch
·· 
(
·· 
FormatException
·· "
fx
··# %
)
··% &
{
ΈΈ 
litAlertError
ΉΉ 
.
ΉΉ 
Text
ΉΉ "
=
ΉΉ# $
fx
ΉΉ% '
.
ΉΉ' (
Message
ΉΉ( /
;
ΉΉ/ 0
Page
ΊΊ 
.
ΊΊ 
ClientScript
ΊΊ !
.
ΊΊ! "#
RegisterStartupScript
ΊΊ" 7
(
ΊΊ7 8
GetType
ΊΊ8 ?
(
ΊΊ? @
)
ΊΊ@ A
,
ΊΊA B
$str
ΊΊC T
,
ΊΊT U
$str
ΊΊV k
,
ΊΊk l
true
ΊΊm q
)
ΊΊq r
;
ΊΊr s
}
»» 
catch
ΌΌ 
(
ΌΌ 
	Exception
ΌΌ 
ex
ΌΌ 
)
ΌΌ  
{
½½ 
litAlertError
ΎΎ 
.
ΎΎ 
Text
ΎΎ "
=
ΎΎ# $
$str
ΎΎ% (
+
ΎΎ) *
ex
ΎΎ+ -
.
ΎΎ- .
Message
ΎΎ. 5
;
ΎΎ5 6
Page
ΏΏ 
.
ΏΏ 
ClientScript
ΏΏ !
.
ΏΏ! "#
RegisterStartupScript
ΏΏ" 7
(
ΏΏ7 8
GetType
ΏΏ8 ?
(
ΏΏ? @
)
ΏΏ@ A
,
ΏΏA B
$str
ΏΏC T
,
ΏΏT U
$str
ΏΏV k
,
ΏΏk l
true
ΏΏm q
)
ΏΏq r
;
ΏΏr s
}
ΐΐ 
finally
ΑΑ 
{
ΒΒ 
if
ΓΓ 
(
ΓΓ 
!
ΓΓ 
string
ΓΓ 
.
ΓΓ 
IsNullOrEmpty
ΓΓ )
(
ΓΓ) *
path
ΓΓ* .
)
ΓΓ. /
)
ΓΓ/ 0
File
ΔΔ 
.
ΔΔ 
Delete
ΔΔ 
(
ΔΔ  
path
ΔΔ  $
)
ΔΔ$ %
;
ΔΔ% &
dir
ΕΕ 
.
ΕΕ 
Delete
ΕΕ 
(
ΕΕ 
)
ΕΕ 
;
ΕΕ 
}
ΖΖ 
}
ΘΘ 	
	protected
ΚΚ 
void
ΚΚ *
btnUploadBranchReguler_Click
ΚΚ 3
(
ΚΚ3 4
object
ΚΚ4 :
sender
ΚΚ; A
,
ΚΚA B
	EventArgs
ΚΚC L
e
ΚΚM N
)
ΚΚN O
{
ΛΛ 	

UploadFile
ΜΜ 
(
ΜΜ '
fuBulkUploadBranchReguler
ΜΜ 0
,
ΜΜ0 1
$str
ΜΜ2 C
)
ΜΜC D
;
ΜΜD E%
LastUploadBranchReguler
ΝΝ #
.
ΝΝ# $
Text
ΝΝ$ (
=
ΝΝ) *
$str
ΝΝ+ <
+
ΝΝ= >
GetLastUpload
ΝΝ? L
(
ΝΝL M
$str
ΝΝM ^
)
ΝΝ^ _
;
ΝΝ_ `
}
ΞΞ 	
	protected
ΠΠ 
void
ΠΠ *
btnUploadBranchPremier_Click
ΠΠ 3
(
ΠΠ3 4
object
ΠΠ4 :
sender
ΠΠ; A
,
ΠΠA B
	EventArgs
ΠΠC L
e
ΠΠM N
)
ΠΠN O
{
ΡΡ 	

UploadFile
ÒÒ 
(
ÒÒ '
fuBulkUploadBranchPremier
ÒÒ 0
,
ÒÒ0 1
$str
ÒÒ2 K
)
ÒÒK L
;
ÒÒL M%
LastUploadBranchPremier
ΣΣ #
.
ΣΣ# $
Text
ΣΣ$ (
=
ΣΣ) *
$str
ΣΣ+ <
+
ΣΣ= >
GetLastUpload
ΣΣ? L
(
ΣΣL M
$str
ΣΣM f
)
ΣΣf g
;
ΣΣg h
}
ΤΤ 	
	protected
ΦΦ 
void
ΦΦ *
btnUploadBranchSyariah_Click
ΦΦ 3
(
ΦΦ3 4
object
ΦΦ4 :
sender
ΦΦ; A
,
ΦΦA B
	EventArgs
ΦΦC L
e
ΦΦM N
)
ΦΦN O
{
ΧΧ 	

UploadFile
ΨΨ 
(
ΨΨ '
fuBulkUploadBranchSyariah
ΨΨ 0
,
ΨΨ0 1
$str
ΨΨ2 K
)
ΨΨK L
;
ΨΨL M%
LastUploadBranchSyariah
ΩΩ #
.
ΩΩ# $
Text
ΩΩ$ (
=
ΩΩ) *
$str
ΩΩ+ <
+
ΩΩ= >
GetLastUpload
ΩΩ? L
(
ΩΩL M
$str
ΩΩM f
)
ΩΩf g
;
ΩΩg h
}
ΪΪ 	
	protected
άά 
void
άά 1
#btnUploadBranchWeekendBanking_Click
άά :
(
άά: ;
object
άά; A
sender
άάB H
,
άάH I
	EventArgs
άάJ S
e
άάT U
)
άάU V
{
έέ 	

UploadFile
ήή 
(
ήή .
 fuBulkUploadBranchWeekendBanking
ήή 7
,
ήή7 8
$str
ήή9 Z
)
ήήZ [
;
ήή[ \,
LastUploadBranchWeekendBanking
ίί *
.
ίί* +
Text
ίί+ /
=
ίί0 1
$str
ίί2 C
+
ίίD E
GetLastUpload
ίίF S
(
ίίS T
$str
ίίT u
)
ίίu v
;
ίίv w
}
ΰΰ 	
	protected
ββ 
void
ββ  
btnUploadATM_Click
ββ )
(
ββ) *
object
ββ* 0
sender
ββ1 7
,
ββ7 8
	EventArgs
ββ9 B
e
ββC D
)
ββD E
{
γγ 	

UploadFile
δδ 
(
δδ 
fuBulkUploadATM
δδ &
,
δδ& '
$str
δδ( 6
)
δδ6 7
;
δδ7 8
LastUploadATM
εε 
.
εε 
Text
εε 
=
εε  
$str
εε! 2
+
εε3 4
GetLastUpload
εε5 B
(
εεB C
$str
εεC Q
)
εεQ R
;
εεR S
}
ζζ 	
	protected
θθ 
void
θθ &
btnUploadPerumahan_Click
θθ /
(
θθ/ 0
object
θθ0 6
sender
θθ7 =
,
θθ= >
	EventArgs
θθ? H
e
θθI J
)
θθJ K
{
ιι 	

UploadFile
κκ 
(
κκ #
fuBulkUploadPerumahan
κκ ,
,
κκ, -
$str
κκ. 9
)
κκ9 :
;
κκ: ;!
LastUploadPerumahan
λλ 
.
λλ  
Text
λλ  $
=
λλ% &
$str
λλ' 8
+
λλ9 :
GetLastUpload
λλ; H
(
λλH I
$str
λλI T
)
λλT U
;
λλU V
}
μμ 	
	protected
ξξ 
void
ξξ &
btnUploadReksadana_Click
ξξ /
(
ξξ/ 0
object
ξξ0 6
sender
ξξ7 =
,
ξξ= >
	EventArgs
ξξ? H
e
ξξI J
)
ξξJ K
{
οο 	

UploadFile
ππ 
(
ππ #
fuBulkUploadReksadana
ππ ,
,
ππ, -
$str
ππ. 9
)
ππ9 :
;
ππ: ;!
LastUploadReksadana
ρρ 
.
ρρ  
Text
ρρ  $
=
ρρ% &
$str
ρρ' 8
+
ρρ9 :
GetLastUpload
ρρ; H
(
ρρH I
$str
ρρI T
)
ρρT U
;
ρρU V
}
ςς 	
	protected
ττ 
void
ττ &
btnUploadListMobil_Click
ττ /
(
ττ/ 0
object
ττ0 6
sender
ττ7 =
,
ττ= >
	EventArgs
ττ? H
e
ττI J
)
ττJ K
{
υυ 	

UploadFile
φφ 
(
φφ #
fuBulkUploadListMobil
φφ ,
,
φφ, -
$str
φφ. 4
)
φφ4 5
;
φφ5 6!
LastUploadListMobil
χχ 
.
χχ  
Text
χχ  $
=
χχ% &
$str
χχ' 8
+
χχ9 :
GetLastUpload
χχ; H
(
χχH I
$str
χχI O
)
χχO P
;
χχP Q
}
ψψ 	
	protected
ϊϊ 
void
ϊϊ &
btnUploadListMotor_Click
ϊϊ /
(
ϊϊ/ 0
object
ϊϊ0 6
sender
ϊϊ7 =
,
ϊϊ= >
	EventArgs
ϊϊ? H
e
ϊϊI J
)
ϊϊJ K
{
ϋϋ 	

UploadFile
όό 
(
όό #
fuBulkUploadListMotor
όό ,
,
όό, -
$str
όό. :
)
όό: ;
;
όό; <!
LastUploadListMotor
ύύ 
.
ύύ  
Text
ύύ  $
=
ύύ% &
$str
ύύ' 8
+
ύύ9 :
GetLastUpload
ύύ; H
(
ύύH I
$str
ύύI U
)
ύύU V
;
ύύV W
}
ώώ 	
	protected
€€ 
void
€€ %
btnUploadRateADDM_Click
€€ .
(
€€. /
object
€€/ 5
sender
€€6 <
,
€€< =
	EventArgs
€€> G
e
€€H I
)
€€I J
{
 	

UploadFile
‚‚ 
(
‚‚ "
fuBulkUploadRateADDM
‚‚ +
,
‚‚+ ,
$str
‚‚- 8
)
‚‚8 9
;
‚‚9 : 
LastUploadRateADDM
ƒƒ 
.
ƒƒ 
Text
ƒƒ #
=
ƒƒ$ %
$str
ƒƒ& 7
+
ƒƒ8 9
GetLastUpload
ƒƒ: G
(
ƒƒG H
$str
ƒƒH S
)
ƒƒS T
;
ƒƒT U
}
„„ 	
	protected
†† 
void
†† 3
%btnUploadRateExtentionInsurance_Click
†† <
(
††< =
object
††= C
sender
††D J
,
††J K
	EventArgs
††L U
e
††V W
)
††W X
{
‡‡ 	

UploadFile
 
(
 0
"fuBulkUploadRateExtentionInsurance
 9
,
9 :
$str
; U
)
U V
;
V W.
 LastUploadRateExtentionInsurance
‰‰ ,
.
‰‰, -
Text
‰‰- 1
=
‰‰2 3
$str
‰‰4 E
+
‰‰F G
GetLastUpload
‰‰H U
(
‰‰U V
$str
‰‰V p
)
‰‰p q
;
‰‰q r
}
 	
	protected
 
void
 -
btnUploadInsuranceAllRisk_Click
 6
(
6 7
object
7 =
sender
> D
,
D E
	EventArgs
F O
e
P Q
)
Q R
{
 	

UploadFile
 
(
 *
fuBulkUploadInsuranceAllRisk
 3
,
3 4
$str
5 ?
)
? @
;
@ A(
LastUploadInsuranceAllRisk
 &
.
& '
Text
' +
=
, -
$str
. ?
+
@ A
GetLastUpload
B O
(
O P
$str
P Z
)
Z [
;
[ \
}
 	
	protected
’’ 
void
’’ (
btnUploadTJHCoverage_Click
’’ 1
(
’’1 2
object
’’2 8
sender
’’9 ?
,
’’? @
	EventArgs
’’A J
e
’’K L
)
’’L M
{
““ 	

UploadFile
”” 
(
”” %
fuBulkUploadTJHCoverage
”” .
,
””. /
$str
””0 >
)
””> ?
;
””? @#
LastUploadTJHCoverage
•• !
.
••! "
Text
••" &
=
••' (
$str
••) :
+
••; <
GetLastUpload
••= J
(
••J K
$str
••K Y
)
••Y Z
;
••Z [
}
–– 	
	protected
 
void
 $
btnUploadKodePos_Click
 -
(
- .
object
. 4
sender
5 ;
,
; <
	EventArgs
= F
e
G H
)
H I
{
™™ 	

UploadFile
 
(
 !
fuBulkUploadKodePos
 *
,
* +
$str
, 5
)
5 6
;
6 7
LastUploadKodePos
›› 
.
›› 
Text
›› "
=
››# $
$str
››% 6
+
››7 8
GetLastUpload
››9 F
(
››F G
$str
››G P
)
››P Q
;
››Q R
}
 	
	protected
 
void
 (
btnUploadBidangUsaha_Click
 1
(
1 2
object
2 8
sender
9 ?
,
? @
	EventArgs
A J
e
K L
)
L M
{
 	

UploadFile
   
(
   %
fuBulkUploadBidangUsaha
   .
,
  . /
$str
  0 =
)
  = >
;
  > ?#
LastUploadBidangUsaha
΅΅ !
.
΅΅! "
Text
΅΅" &
=
΅΅' (
$str
΅΅) :
+
΅΅; <
GetLastUpload
΅΅= J
(
΅΅J K
$str
΅΅K X
)
΅΅X Y
;
΅΅Y Z
}
ΆΆ 	
	protected
¤¤ 
void
¤¤ +
btnUploadJenisPekerjaan_Click
¤¤ 4
(
¤¤4 5
object
¤¤5 ;
sender
¤¤< B
,
¤¤B C
	EventArgs
¤¤D M
e
¤¤N O
)
¤¤O P
{
¥¥ 	

UploadFile
¦¦ 
(
¦¦ (
fuBulkUploadJenisPekerjaan
¦¦ 1
,
¦¦1 2
$str
¦¦3 C
)
¦¦C D
;
¦¦D E&
LastUploadJenisPekerjaan
§§ $
.
§§$ %
Text
§§% )
=
§§* +
$str
§§, =
+
§§> ?
GetLastUpload
§§@ M
(
§§M N
$str
§§N ^
)
§§^ _
;
§§_ `
}
¨¨ 	
	protected
ªª 
void
ªª (
btnUploadVoucherCode_Click
ªª 1
(
ªª1 2
object
ªª2 8
sender
ªª9 ?
,
ªª? @
	EventArgs
ªªA J
e
ªªK L
)
ªªL M
{
«« 	

UploadFile
¬¬ 
(
¬¬ %
fuBulkUploadVoucherCode
¬¬ .
,
¬¬. /
$str
¬¬0 :
)
¬¬: ;
;
¬¬; <#
LastUploadVoucherCode
­­ !
.
­­! "
Text
­­" &
=
­­' (
$str
­­) :
+
­­; <
GetLastUpload
­­= J
(
­­J K
$str
­­K U
)
­­U V
;
­­V W
}
®® 	
	protected
°° 
void
°° 0
"btnUploadBusinessVoucherCode_Click
°° 9
(
°°9 :
object
°°: @
sender
°°A G
,
°°G H
	EventArgs
°°I R
e
°°S T
)
°°T U
{
±± 	

UploadFile
²² 
(
²² -
fuBulkUploadBusinessVoucherCode
²² 6
,
²²6 7
$str
²²8 J
)
²²J K
;
²²K L+
LastUploadBusinessVoucherCode
³³ )
.
³³) *
Text
³³* .
=
³³/ 0
$str
³³1 B
+
³³C D
GetLastUpload
³³E R
(
³³R S
$str
³³S e
)
³³e f
;
³³f g/
!LastUploadBusinessVoucherCodeNote
΄΄ -
.
΄΄- .
Text
΄΄. 2
=
΄΄3 4
$str
΄΄5 F
+
΄΄G H
GetLastUpload
΄΄I V
(
΄΄V W
$str
΄΄W i
)
΄΄i j
;
΄΄j k
}
µµ 	
	protected
·· 
void
·· 2
$btnUploadCreditCardVoucherCode_Click
·· ;
(
··; <
object
··< B
sender
··C I
,
··I J
	EventArgs
··K T
e
··U V
)
··V W
{
ΈΈ 	

UploadFile
ΉΉ 
(
ΉΉ /
!fuBulkUploadCreditCardVoucherCode
ΉΉ 8
,
ΉΉ8 9
$str
ΉΉ: N
)
ΉΉN O
;
ΉΉO P-
LastUploadCreditCardVoucherCode
ΊΊ +
.
ΊΊ+ ,
Text
ΊΊ, 0
=
ΊΊ1 2
$str
ΊΊ3 D
+
ΊΊE F
GetLastUpload
ΊΊG T
(
ΊΊT U
$str
ΊΊU i
)
ΊΊi j
;
ΊΊj k1
#LastUploadCreditCardVoucherCodeNote
»» /
.
»»/ 0
Text
»»0 4
=
»»5 6
$str
»»7 H
+
»»I J
GetLastUpload
»»K X
(
»»X Y
$str
»»Y m
)
»»m n
;
»»n o
}
ΌΌ 	
	protected
ΎΎ 
void
ΎΎ ,
btnUploadLoanVoucherCode_Click
ΎΎ 5
(
ΎΎ5 6
object
ΎΎ6 <
sender
ΎΎ= C
,
ΎΎC D
	EventArgs
ΎΎE N
e
ΎΎO P
)
ΎΎP Q
{
ΏΏ 	

UploadFile
ΐΐ 
(
ΐΐ )
fuBulkUploadLoanVoucherCode
ΐΐ 2
,
ΐΐ2 3
$str
ΐΐ4 B
)
ΐΐB C
;
ΐΐC D'
LastUploadLoanVoucherCode
ΑΑ %
.
ΑΑ% &
Text
ΑΑ& *
=
ΑΑ+ ,
$str
ΑΑ- >
+
ΑΑ? @
GetLastUpload
ΑΑA N
(
ΑΑN O
$str
ΑΑO ]
)
ΑΑ] ^
;
ΑΑ^ _+
LastUploadLoanVoucherCodeNote
ΒΒ )
.
ΒΒ) *
Text
ΒΒ* .
=
ΒΒ/ 0
$str
ΒΒ1 B
+
ΒΒC D
GetLastUpload
ΒΒE R
(
ΒΒR S
$str
ΒΒS a
)
ΒΒa b
;
ΒΒb c
}
ΓΓ 	
	protected
ΕΕ 
void
ΕΕ =
/btnUploadMortgageMultifunctionVoucherCode_Click
ΕΕ F
(
ΕΕF G
object
ΕΕG M
sender
ΕΕN T
,
ΕΕT U
	EventArgs
ΕΕV _
e
ΕΕ` a
)
ΕΕa b
{
ΖΖ 	

UploadFile
ΗΗ 
(
ΗΗ :
,fuBulkUploadMortgageMultifunctionVoucherCode
ΗΗ C
,
ΗΗC D
$str
ΗΗE d
)
ΗΗd e
;
ΗΗe f8
*LastUploadMortgageMultifunctionVoucherCode
ΘΘ 6
.
ΘΘ6 7
Text
ΘΘ7 ;
=
ΘΘ< =
$str
ΘΘ> O
+
ΘΘP Q
GetLastUpload
ΘΘR _
(
ΘΘ_ `
$str
ΘΘ` 
)ΘΘ €
;ΘΘ€ <
.LastUploadMortgageMultifunctionVoucherCodeNote
ΙΙ :
.
ΙΙ: ;
Text
ΙΙ; ?
=
ΙΙ@ A
$str
ΙΙB S
+
ΙΙT U
GetLastUpload
ΙΙV c
(
ΙΙc d
$strΙΙd ƒ
)ΙΙƒ „
;ΙΙ„ …
}
ΚΚ 	
	protected
ΜΜ 
void
ΜΜ .
 btnUploadSavingVoucherCode_Click
ΜΜ 7
(
ΜΜ7 8
object
ΜΜ8 >
sender
ΜΜ? E
,
ΜΜE F
	EventArgs
ΜΜG P
e
ΜΜQ R
)
ΜΜR S
{
ΝΝ 	

UploadFile
ΞΞ 
(
ΞΞ +
fuBulkUploadSavingVoucherCode
ΞΞ 4
,
ΞΞ4 5
$str
ΞΞ6 F
)
ΞΞF G
;
ΞΞG H)
LastUploadSavingVoucherCode
ΟΟ '
.
ΟΟ' (
Text
ΟΟ( ,
=
ΟΟ- .
$str
ΟΟ/ @
+
ΟΟA B
GetLastUpload
ΟΟC P
(
ΟΟP Q
$str
ΟΟQ a
)
ΟΟa b
;
ΟΟb c-
LastUploadSavingVoucherCodeNote
ΠΠ +
.
ΠΠ+ ,
Text
ΠΠ, 0
=
ΠΠ1 2
$str
ΠΠ3 D
+
ΠΠE F
GetLastUpload
ΠΠG T
(
ΠΠT U
$str
ΠΠU e
)
ΠΠe f
;
ΠΠf g
}
ΡΡ 	
	protected
ΣΣ 
void
ΣΣ /
!btnUploadSyariahVoucherCode_Click
ΣΣ 8
(
ΣΣ8 9
object
ΣΣ9 ?
sender
ΣΣ@ F
,
ΣΣF G
	EventArgs
ΣΣH Q
e
ΣΣR S
)
ΣΣS T
{
ΤΤ 	

UploadFile
ΥΥ 
(
ΥΥ ,
fuBulkUploadSyariahVoucherCode
ΥΥ 5
,
ΥΥ5 6
$str
ΥΥ7 H
)
ΥΥH I
;
ΥΥI J*
LastUploadSyariahVoucherCode
ΦΦ (
.
ΦΦ( )
Text
ΦΦ) -
=
ΦΦ. /
$str
ΦΦ0 A
+
ΦΦB C
GetLastUpload
ΦΦD Q
(
ΦΦQ R
$str
ΦΦR c
)
ΦΦc d
;
ΦΦd e.
 LastUploadSyariahVoucherCodeNote
ΧΧ ,
.
ΧΧ, -
Text
ΧΧ- 1
=
ΧΧ2 3
$str
ΧΧ4 E
+
ΧΧF G
GetLastUpload
ΧΧH U
(
ΧΧU V
$str
ΧΧV g
)
ΧΧg h
;
ΧΧh i
}
ΨΨ 	
}
ΩΩ 
}ΪΪ Γ
cC:\Review Code\Maybank Blog\Administrators\code\Sitecore\Admin\UserControl\BulkUploadAllLog.ascx.cs
	namespace 	
Sitecore
 
. 
Feature 
. 
Administrators )
.) *
Sitecore* 2
.2 3
Admin3 8
.8 9
UserControl9 D
{		 
public

 

partial

 
class

 
BulkUploadAllLog

 )
:

* +
System

, 2
.

2 3
Web

3 6
.

6 7
UI

7 9
.

9 :
UserControl

: E
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} 