�
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
} �
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
} �
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
]&&) *�
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} ��
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
/$(document).ready(function () {{ alert('Error: 	Z �
{
� �
ex
� �
.
� �
Message
� �
}
� �
') }});
� �
"
� �
,
� �
true
� �
)
� �
;
� �
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
E$(document).ready(function () {{ SetActiveTab('deleted-comment') }});	%%X �
"
%%� �
,
%%� �
true
%%� �
)
%%� �
;
%%� �
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
$str	))x �
,
))� �
bool
))� �
setTab
))� �
=
))� �
false
))� �
)
))� �
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
E$(document).ready(function () {{ SetActiveTab('deleted-comment') }});	--X �
"
--� �
,
--� �
true
--� �
)
--� �
;
--� �
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
m$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid options.'); }}, 1); }});	22[ �
"
22� �
,
22� �
true
22� �
)
22� �
;
22� �
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
j$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid date.'); }}, 1); }});	==X �
"
==� �
,
==� �
true
==� �
)
==� �
;
==� �
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
$num	VV �
)
VV� �
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
$str	hhy �
)
hh� �
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
$str	zz} �
)
zz� �
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
�� 
.
�� 
CommandType
�� 
=
��  !
CommandType
��" -
.
��- .
StoredProcedure
��. =
;
��= >
SqlParameter
�� 
param
�� "
=
��# $
cmd
��% (
.
��( )

Parameters
��) 3
.
��3 4
AddWithValue
��4 @
(
��@ A
$str
��A K
,
��K L
keyword
��M T
)
��T U
;
��U V
SqlParameter
�� 
param2
�� #
=
��$ %
cmd
��& )
.
��) *

Parameters
��* 4
.
��4 5
AddWithValue
��5 A
(
��A B
$str
��B M
,
��M N
category
��O W
)
��W X
;
��X Y
SqlParameter
�� 
param3
�� #
=
��$ %
cmd
��& )
.
��) *

Parameters
��* 4
.
��4 5
AddWithValue
��5 A
(
��A B
$str
��B J
,
��J K
start
��L Q
+
��R S
$str
��T _
)
��_ `
;
��` a
SqlParameter
�� 
param4
�� #
=
��$ %
cmd
��& )
.
��) *

Parameters
��* 4
.
��4 5
AddWithValue
��5 A
(
��A B
$str
��B H
,
��H I
end
��J M
+
��N O
$str
��P [
)
��[ \
;
��\ ]
SqlDataAdapter
�� 
dataAdapter
�� *
=
��+ ,
new
��- 0
SqlDataAdapter
��1 ?
(
��? @
cmd
��@ C
)
��C D
;
��D E
dataAdapter
�� 
.
�� 
Fill
��  
(
��  !
dataset
��! (
,
��( )
$str
��* 2
)
��2 3
;
��3 4
}
�� 
return
�� 
dataset
�� 
;
�� 
}
�� 	
DataSet
�� $
SearchCommentByContent
�� &
(
��& '
string
��' -
keyword
��. 5
=
��6 7
$str
��8 :
,
��: ;
string
��< B
category
��C K
=
��L M
$str
��N P
,
��P Q
string
��R X
start
��Y ^
=
��_ `
$str
��a m
,
��m n
string
��o u
end
��v y
=
��z {
$str��| �
)��� �
{
�� 	
DataSet
�� 
dataset
�� 
=
�� 
new
�� !
DataSet
��" )
(
��) *
)
��* +
;
��+ ,
using
�� 
(
�� 
SqlConnection
��  
conn
��! %
=
��& '
new
��( +
SqlConnection
��, 9
(
��9 :
new
��: =
Config
��> D
(
��D E
)
��E F
.
��F G
ConectionString
��G V
)
��V W
)
��W X
{
�� 

SqlCommand
�� 
cmd
�� 
=
��  
new
��! $

SqlCommand
��% /
(
��/ 0
$str
��0 I
,
��I J
conn
��K O
)
��O P
;
��P Q
cmd
�� 
.
�� 
CommandType
�� 
=
��  !
CommandType
��" -
.
��- .
StoredProcedure
��. =
;
��= >
SqlParameter
�� 
param
�� "
=
��# $
cmd
��% (
.
��( )

Parameters
��) 3
.
��3 4
AddWithValue
��4 @
(
��@ A
$str
��A K
,
��K L
keyword
��M T
)
��T U
;
��U V
SqlParameter
�� 
param2
�� #
=
��$ %
cmd
��& )
.
��) *

Parameters
��* 4
.
��4 5
AddWithValue
��5 A
(
��A B
$str
��B M
,
��M N
category
��O W
)
��W X
;
��X Y
SqlParameter
�� 
param3
�� #
=
��$ %
cmd
��& )
.
��) *

Parameters
��* 4
.
��4 5
AddWithValue
��5 A
(
��A B
$str
��B J
,
��J K
start
��L Q
+
��R S
$str
��T _
)
��_ `
;
��` a
SqlParameter
�� 
param4
�� #
=
��$ %
cmd
��& )
.
��) *

Parameters
��* 4
.
��4 5
AddWithValue
��5 A
(
��A B
$str
��B H
,
��H I
end
��J M
+
��N O
$str
��P [
)
��[ \
;
��\ ]
SqlDataAdapter
�� 
dataAdapter
�� *
=
��+ ,
new
��- 0
SqlDataAdapter
��1 ?
(
��? @
cmd
��@ C
)
��C D
;
��D E
dataAdapter
�� 
.
�� 
Fill
��  
(
��  !
dataset
��! (
,
��( )
$str
��* 2
)
��2 3
;
��3 4
}
�� 
return
�� 
dataset
�� 
;
�� 
}
�� 	
void
�� !
ChangeCommentStatus
��  
(
��  !
string
��! '
[
��' (
]
��( )
values
��* 0
,
��0 1
int
��2 5
status
��6 <
)
��< =
{
�� 	
using
�� 
(
�� 
SqlConnection
��  
conn
��! %
=
��& '
new
��( +
SqlConnection
��, 9
(
��9 :
new
��: =
Config
��> D
(
��D E
)
��E F
.
��F G
ConectionString
��G V
)
��V W
)
��W X
{
�� 
	DataTable
�� 
dt
�� 
=
�� 
new
�� "
	DataTable
��# ,
(
��, -
)
��- .
;
��. /
dt
�� 
.
�� 
Columns
�� 
.
�� 
Add
�� 
(
�� 
$str
�� #
,
��# $
typeof
��% +
(
��+ ,
string
��, 2
)
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� 
values
�� 
.
�� 
Count
��  
(
��  !
)
��! "
!=
��# %
$num
��& '
)
��' (
{
�� 
foreach
�� 
(
�� 
string
�� #
str
��$ '
in
��( *
values
��+ 1
)
��1 2
{
�� 
dt
�� 
.
�� 
Rows
�� 
.
��  
Add
��  #
(
��# $
str
��$ '
)
��' (
;
��( )
}
�� 
}
�� 

SqlCommand
�� 
cmd
�� 
=
��  
new
��! $

SqlCommand
��% /
(
��/ 0
$str
��0 K
,
��K L
conn
��M Q
)
��Q R
;
��R S
cmd
�� 
.
�� 
CommandType
�� 
=
��  !
CommandType
��" -
.
��- .
StoredProcedure
��. =
;
��= >
SqlParameter
�� 
param
�� "
=
��# $
cmd
��% (
.
��( )

Parameters
��) 3
.
��3 4
AddWithValue
��4 @
(
��@ A
$str
��A H
,
��H I
dt
��J L
)
��L M
;
��M N
param
�� 
.
�� 
	SqlDbType
�� 
=
��  !
	SqlDbType
��" +
.
��+ ,

Structured
��, 6
;
��6 7
SqlParameter
�� 
param2
�� #
=
��$ %
cmd
��& )
.
��) *

Parameters
��* 4
.
��4 5
AddWithValue
��5 A
(
��A B
$str
��B I
,
��I J
status
��K Q
)
��Q R
;
��R S
param2
�� 
.
�� 
	SqlDbType
��  
=
��! "
	SqlDbType
��# ,
.
��, -
Bit
��- 0
;
��0 1
param
�� 
.
�� 
TypeName
�� 
=
��  
$str
��! .
;
��. /
conn
�� 
.
�� 
Open
�� 
(
�� 
)
�� 
;
�� 
cmd
�� 
.
�� 
ExecuteNonQuery
�� #
(
��# $
)
��$ %
;
��% &
conn
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
bool
�� 
ValidateInput
�� 
(
�� 
string
�� !
keyword
��" )
,
��) *
string
��+ 1
category
��2 :
,
��: ;
string
��< B
start
��C H
,
��H I
string
��J P
end
��Q T
)
��T U
{
�� 	
if
�� 
(
�� 
keyword
�� 
.
�� 
Trim
�� 
(
�� 
)
�� 
==
�� !
$str
��" -
||
��. 0
keyword
��1 8
.
��8 9
Trim
��9 =
(
��= >
)
��> ?
==
��@ B
$str
��C E
)
��E F
return
��G M
false
��N S
;
��S T
string
�� 
[
�� 
]
�� 

categories
�� 
=
��  !
new
��" %
string
��& ,
[
��, -
]
��- .
{
��/ 0
$str
��1 B
,
��B C
$str
��D N
,
��N O
$str
��P Y
}
��Z [
;
��[ \
bool
�� 
valid
�� 
=
�� 
false
�� 
;
�� 
foreach
�� 
(
�� 
string
�� 
str
�� 
in
��  "

categories
��# -
)
��- .
{
�� 
if
�� 
(
�� 
str
�� 
==
�� 
category
�� #
.
��# $
Trim
��$ (
(
��( )
)
��) *
)
��* +
valid
��, 1
=
��2 3
true
��4 8
;
��8 9
}
�� 
if
�� 
(
�� 
!
�� 
valid
�� 
)
�� 
return
�� 
false
�� $
;
��$ %
return
�� 
true
�� 
;
�� 
}
�� 	
	protected
�� 
void
�� 
BtnRestore_Click
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
	EventArgs
��7 @
e
��A B
)
��B C
{
�� 	
try
�� 
{
�� 
List
�� 
<
�� 
string
�� 
>
�� 
uids
�� !
=
��" #
new
��$ '
List
��( ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
foreach
�� 
(
�� 
RepeaterItem
�� %
item
��& *
in
��+ -
commentList
��. 9
.
��9 :
Items
��: ?
)
��? @
{
�� 
CheckBox
�� 
cb
�� 
=
��  !
(
��" #
CheckBox
��# +
)
��+ ,
item
��, 0
.
��0 1
FindControl
��1 <
(
��< =
$str
��= N
)
��N O
;
��O P
if
�� 
(
�� 
cb
�� 
.
�� 
Checked
�� "
)
��" #
{
�� 
HiddenField
�� #
	commentID
��$ -
=
��. /
(
��0 1
HiddenField
��1 <
)
��< =
item
��= A
.
��A B
FindControl
��B M
(
��M N
$str
��N Y
)
��Y Z
;
��Z [
uids
�� 
.
�� 
Add
��  
(
��  !
	commentID
��! *
.
��* +
Value
��+ 0
)
��0 1
;
��1 2
}
�� 
}
�� !
ChangeCommentStatus
�� #
(
��# $
uids
��$ (
.
��( )
ToArray
��) 0
(
��0 1
)
��1 2
,
��2 3
$num
��4 5
)
��5 6
;
��6 7
DisplayAllComment
�� !
(
��! "
true
��" &
)
��& '
;
��' (
MyTask
�� 
otherUC
�� 
=
��  
this
��! %
.
��% &
Page
��& *
.
��* +
FindControl
��+ 6
(
��6 7
$str
��7 A
)
��A B
as
��C E
MyTask
��F L
;
��L M
otherUC
�� 
.
�� 
DisplayAllComment
�� )
(
��) *
false
��* /
)
��/ 0
;
��0 1
ApprovedComment
�� 
otherUC2
��  (
=
��) *
this
��+ /
.
��/ 0
Page
��0 4
.
��4 5
FindControl
��5 @
(
��@ A
$str
��A T
)
��T U
as
��V X
ApprovedComment
��Y h
;
��h i
otherUC2
�� 
.
�� 
DisplayAllComment
�� *
(
��* +
false
��+ 0
)
��0 1
;
��1 2
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Page
�� 
.
�� 
ClientScript
�� !
.
��! "#
RegisterStartupScript
��" 7
(
��7 8
this
��8 <
.
��< =
GetType
��= D
(
��D E
)
��E F
,
��F G
$str
��H O
,
��O P
$@"
��Q T>
/$(document).ready(function () {{ alert('Error: ��T �
{��� �
ex��� �
.��� �
Message��� �
}��� �
') }});��� �
"��� �
,��� �
true��� �
)��� �
;��� �
}
�� 
}
�� 	
	protected
�� 
void
�� #
BtnSearchByDate_Click
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;
	EventArgs
��< E
e
��F G
)
��G H
{
�� 	
if
�� 
(
�� 

IsPostBack
�� 
)
�� 
{
�� 
DisplayComment
�� 
(
�� 
Keyword
�� &
.
��& '
Text
��' +
,
��+ ,
CategoryList
��- 9
.
��9 :
Text
��: >
,
��> ?
DatePickerStart
��@ O
.
��O P
Text
��P T
,
��T U
DatePickerEnd
��V c
.
��c d
Text
��d h
,
��h i
true
��j n
)
��n o
;
��o p
MyTask
�� 
otherUC
�� 
=
��  
this
��! %
.
��% &
Page
��& *
.
��* +
FindControl
��+ 6
(
��6 7
$str
��7 A
)
��A B
as
��C E
MyTask
��F L
;
��L M
otherUC
�� 
.
�� 
DisplayAllComment
�� )
(
��) *
false
��* /
)
��/ 0
;
��0 1
ApprovedComment
�� 
otherUC2
��  (
=
��) *
this
��+ /
.
��/ 0
Page
��0 4
.
��4 5
FindControl
��5 @
(
��@ A
$str
��A T
)
��T U
as
��V X
ApprovedComment
��Y h
;
��h i
otherUC2
�� 
.
�� 
DisplayAllComment
�� *
(
��* +
false
��+ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
	protected
�� 
void
�� 
BtnShowAll_Click
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
	EventArgs
��7 @
e
��A B
)
��B C
{
�� 	
if
�� 
(
�� 

IsPostBack
�� 
)
�� 
{
�� 
try
�� 
{
�� 
DisplayAllComment
�� %
(
��% &
true
��& *
)
��* +
;
��+ ,
MyTask
�� 
otherUC
�� "
=
��# $
this
��% )
.
��) *
Page
��* .
.
��. /
FindControl
��/ :
(
��: ;
$str
��; E
)
��E F
as
��G I
MyTask
��J P
;
��P Q
otherUC
�� 
.
�� 
DisplayAllComment
�� -
(
��- .
false
��. 3
)
��3 4
;
��4 5
ApprovedComment
�� #
otherUC2
��$ ,
=
��- .
this
��/ 3
.
��3 4
Page
��4 8
.
��8 9
FindControl
��9 D
(
��D E
$str
��E X
)
��X Y
as
��Z \
ApprovedComment
��] l
;
��l m
otherUC2
�� 
.
�� 
DisplayAllComment
�� .
(
��. /
false
��/ 4
)
��4 5
;
��5 6
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Page
�� 
.
�� 
ClientScript
�� %
.
��% &#
RegisterStartupScript
��& ;
(
��; <
this
��< @
.
��@ A
GetType
��A H
(
��H I
)
��I J
,
��J K
$str
��L R
,
��R S
$@"
��T W>
/$(document).ready(function () {{ alert('Error: ��W �
{��� �
ex��� �
.��� �
Message��� �
}��� �
') }});��� �
"��� �
,��� �
true��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
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
/$(document).ready(function () {{ alert('Error: 	Z �
{
� �
ex
� �
.
� �
Message
� �
}
� �
') }});
� �
"
� �
,
� �
true
� �
)
� �
;
� �
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
F$(document).ready(function () {{ SetActiveTab('approved-comment') }});	%%X �
"
%%� �
,
%%� �
true
%%� �
)
%%� �
;
%%� �
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
$str	))x �
,
))� �
bool
))� �
setTab
))� �
=
))� �
false
))� �
)
))� �
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
F$(document).ready(function () {{ SetActiveTab('approved-comment') }});	--X �
"
--� �
,
--� �
true
--� �
)
--� �
;
--� �
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
m$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid options.'); }}, 1); }});	22[ �
"
22� �
,
22� �
true
22� �
)
22� �
;
22� �
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
j$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid date.'); }}, 1); }});	==X �
"
==� �
,
==� �
true
==� �
)
==� �
;
==� �
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
end	EE} �
=
EE� �
$str
EE� �
)
EE� �
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
�� 
valid
�� 
=
�� 
false
�� 
;
�� 
foreach
�� 
(
�� 
string
�� 
str
�� 
in
��  "

categories
��# -
)
��- .
{
�� 
if
�� 
(
�� 
str
�� 
==
�� 
category
�� #
.
��# $
Trim
��$ (
(
��( )
)
��) *
)
��* +
valid
��, 1
=
��2 3
true
��4 8
;
��8 9
}
�� 
if
�� 
(
�� 
!
�� 
valid
�� 
)
�� 
return
�� 
false
�� $
;
��$ %
return
�� 
true
�� 
;
�� 
}
�� 	
	protected
�� 
void
�� 
BtnDelete_Click
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
	EventArgs
��6 ?
e
��@ A
)
��A B
{
�� 	
try
�� 
{
�� 
List
�� 
<
�� 
string
�� 
>
�� 
uids
�� !
=
��" #
new
��$ '
List
��( ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
foreach
�� 
(
�� 
RepeaterItem
�� %
item
��& *
in
��+ -
commentList
��. 9
.
��9 :
Items
��: ?
)
��? @
{
�� 
CheckBox
�� 
cb
�� 
=
��  !
(
��" #
CheckBox
��# +
)
��+ ,
item
��, 0
.
��0 1
FindControl
��1 <
(
��< =
$str
��= N
)
��N O
;
��O P
if
�� 
(
�� 
cb
�� 
.
�� 
Checked
�� "
)
��" #
{
�� 
HiddenField
�� #
	commentID
��$ -
=
��. /
(
��0 1
HiddenField
��1 <
)
��< =
item
��= A
.
��A B
FindControl
��B M
(
��M N
$str
��N Y
)
��Y Z
;
��Z [
uids
�� 
.
�� 
Add
��  
(
��  !
	commentID
��! *
.
��* +
Value
��+ 0
)
��0 1
;
��1 2
}
�� 
}
�� #
ChangeCommentApproval
�� %
(
��% &
uids
��& *
.
��* +
ToArray
��+ 2
(
��2 3
)
��3 4
,
��4 5
$num
��6 7
)
��7 8
;
��8 9
DisplayAllComment
�� !
(
��! "
true
��" &
)
��& '
;
��' (
MyTask
�� 
otherUC
�� 
=
��  
this
��! %
.
��% &
Page
��& *
.
��* +
FindControl
��+ 6
(
��6 7
$str
��7 A
)
��A B
as
��C E
MyTask
��F L
;
��L M
otherUC
�� 
.
�� 
DisplayAllComment
�� )
(
��) *
false
��* /
)
��/ 0
;
��0 1
DeletedComment
�� 
otherUC2
�� '
=
��( )
this
��* .
.
��. /
Page
��/ 3
.
��3 4
FindControl
��4 ?
(
��? @
$str
��@ R
)
��R S
as
��T V
DeletedComment
��W e
;
��e f
otherUC2
�� 
.
�� 
DisplayAllComment
�� *
(
��* +
false
��+ 0
)
��0 1
;
��1 2
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Page
�� 
.
�� 
ClientScript
�� !
.
��! "#
RegisterStartupScript
��" 7
(
��7 8
this
��8 <
.
��< =
GetType
��= D
(
��D E
)
��E F
,
��F G
$str
��H O
,
��O P
$@"
��Q T>
/$(document).ready(function () {{ alert('Error: ��T �
{��� �
ex��� �
.��� �
Message��� �
}��� �
') }});��� �
"��� �
,��� �
true��� �
)��� �
;��� �
}
�� 
}
�� 	
	protected
�� 
void
�� #
BtnSearchByDate_Click
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;
	EventArgs
��< E
e
��F G
)
��G H
{
�� 	
if
�� 
(
�� 

IsPostBack
�� 
)
�� 
{
�� 
DisplayComment
�� 
(
�� 
Keyword
�� &
.
��& '
Text
��' +
,
��+ ,
CategoryList
��- 9
.
��9 :
Text
��: >
,
��> ?
DatePickerStart
��@ O
.
��O P
Text
��P T
,
��T U
DatePickerEnd
��V c
.
��c d
Text
��d h
,
��h i
true
��j n
)
��n o
;
��o p
MyTask
�� 
otherUC
�� 
=
��  
this
��! %
.
��% &
Page
��& *
.
��* +
FindControl
��+ 6
(
��6 7
$str
��7 A
)
��A B
as
��C E
MyTask
��F L
;
��L M
otherUC
�� 
.
�� 
DisplayAllComment
�� )
(
��) *
false
��* /
)
��/ 0
;
��0 1
DeletedComment
�� 
otherUC2
�� '
=
��( )
this
��* .
.
��. /
Page
��/ 3
.
��3 4
FindControl
��4 ?
(
��? @
$str
��@ R
)
��R S
as
��T V
DeletedComment
��W e
;
��e f
otherUC2
�� 
.
�� 
DisplayAllComment
�� *
(
��* +
false
��+ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
	protected
�� 
void
�� 
BtnShowAll_Click
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
	EventArgs
��7 @
e
��A B
)
��B C
{
�� 	
if
�� 
(
�� 

IsPostBack
�� 
)
�� 
{
�� 
try
�� 
{
�� 
DisplayAllComment
�� %
(
��% &
true
��& *
)
��* +
;
��+ ,
MyTask
�� 
otherUC
�� "
=
��# $
this
��% )
.
��) *
Page
��* .
.
��. /
FindControl
��/ :
(
��: ;
$str
��; E
)
��E F
as
��G I
MyTask
��J P
;
��P Q
otherUC
�� 
.
�� 
DisplayAllComment
�� -
(
��- .
false
��. 3
)
��3 4
;
��4 5
DeletedComment
�� "
otherUC2
��# +
=
��, -
this
��. 2
.
��2 3
Page
��3 7
.
��7 8
FindControl
��8 C
(
��C D
$str
��D V
)
��V W
as
��X Z
DeletedComment
��[ i
;
��i j
otherUC2
�� 
.
�� 
DisplayAllComment
�� .
(
��. /
false
��/ 4
)
��4 5
;
��5 6
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Page
�� 
.
�� 
ClientScript
�� %
.
��% &#
RegisterStartupScript
��& ;
(
��; <
this
��< @
.
��@ A
GetType
��A H
(
��H I
)
��I J
,
��J K
$str
��L R
,
��R S
$@"
��T W>
/$(document).ready(function () {{ alert('Error: ��W �
{��� �
ex��� �
.��� �
Message��� �
}��� �
') }});��� �
"��� �
,��� �
true��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �P
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
DatePickerDebugEnd	aat �
.
aa� �
Text
aa� �
}
aa� �
') }});
aa� �
"
aa� �
;
aa� �
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
}qq ��
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
/$(document).ready(function () {{ alert('Error: 	Z �
{
� �
ex
� �
.
� �
Message
� �
}
� �
') }});
� �
"
� �
,
� �
true
� �
)
� �
;
� �
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
=$(document).ready(function () {{ SetActiveTab('my-task') }});	%%X �
"
%%� �
,
%%� �
true
%%� �
)
%%� �
;
%%� �
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
$str	))x �
,
))� �
bool
))� �
setTab
))� �
=
))� �
false
))� �
)
))� �
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
=$(document).ready(function () {{ SetActiveTab('my-task') }});	--X �
"
--� �
,
--� �
true
--� �
)
--� �
;
--� �
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
m$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid options.'); }}, 1); }});	33[ �
"
33� �
,
33� �
true
33� �
)
33� �
;
33� �
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
j$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid date.'); }}, 1); }});	==X �
"
==� �
,
==� �
true
==� �
)
==� �
;
==� �
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
end	EE} �
=
EE� �
$str
EE� �
)
EE� �
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
�� 
valid
�� 
=
�� 
false
�� 
;
�� 
foreach
�� 
(
�� 
string
�� 
str
�� 
in
��  "

categories
��# -
)
��- .
{
�� 
if
�� 
(
�� 
str
�� 
==
�� 
category
�� #
.
��# $
Trim
��$ (
(
��( )
)
��) *
)
��* +
valid
��, 1
=
��2 3
true
��4 8
;
��8 9
}
�� 
if
�� 
(
�� 
!
�� 
valid
�� 
)
�� 
return
�� 
false
�� $
;
��$ %
return
�� 
true
�� 
;
�� 
}
�� 	
	protected
�� 
void
�� 
BtnApprove_Click
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
	EventArgs
��7 @
e
��A B
)
��B C
{
�� 	
try
�� 
{
�� 
List
�� 
<
�� 
string
�� 
>
�� 
uids
�� !
=
��" #
new
��$ '
List
��( ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
foreach
�� 
(
�� 
RepeaterItem
�� %
item
��& *
in
��+ -
commentList
��. 9
.
��9 :
Items
��: ?
)
��? @
{
�� 
CheckBox
�� 
cb
�� 
=
��  !
(
��" #
CheckBox
��# +
)
��+ ,
item
��, 0
.
��0 1
FindControl
��1 <
(
��< =
$str
��= N
)
��N O
;
��O P
if
�� 
(
�� 
cb
�� 
.
�� 
Checked
�� "
)
��" #
{
�� 
HiddenField
�� #
	commentID
��$ -
=
��. /
(
��0 1
HiddenField
��1 <
)
��< =
item
��= A
.
��A B
FindControl
��B M
(
��M N
$str
��N Y
)
��Y Z
;
��Z [
uids
�� 
.
�� 
Add
��  
(
��  !
	commentID
��! *
.
��* +
Value
��+ 0
)
��0 1
;
��1 2
}
�� 
}
�� #
ChangeCommentApproval
�� %
(
��% &
uids
��& *
.
��* +
ToArray
��+ 2
(
��2 3
)
��3 4
,
��4 5
$num
��6 7
)
��7 8
;
��8 9
DisplayAllComment
�� !
(
��! "
true
��" &
)
��& '
;
��' (
ApprovedComment
�� 
otherUC
��  '
=
��( )
this
��* .
.
��. /
Page
��/ 3
.
��3 4
FindControl
��4 ?
(
��? @
$str
��@ S
)
��S T
as
��U W
ApprovedComment
��X g
;
��g h
otherUC
�� 
.
�� 
DisplayAllComment
�� )
(
��) *
false
��* /
)
��/ 0
;
��0 1
DeletedComment
�� 
otherUC2
�� '
=
��( )
this
��* .
.
��. /
Page
��/ 3
.
��3 4
FindControl
��4 ?
(
��? @
$str
��@ R
)
��R S
as
��T V
DeletedComment
��W e
;
��e f
otherUC2
�� 
.
�� 
DisplayAllComment
�� *
(
��* +
false
��+ 0
)
��0 1
;
��1 2
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Page
�� 
.
�� 
ClientScript
�� !
.
��! "#
RegisterStartupScript
��" 7
(
��7 8
this
��8 <
.
��< =
GetType
��= D
(
��D E
)
��E F
,
��F G
$str
��H O
,
��O P
$@"
��Q T>
/$(document).ready(function () {{ alert('Error: ��T �
{��� �
ex��� �
.��� �
Message��� �
}��� �
') }});��� �
"��� �
,��� �
true��� �
)��� �
;��� �
}
�� 
}
�� 	
	protected
�� 
void
�� 
BtnReject_Click
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
	EventArgs
��6 ?
e
��@ A
)
��A B
{
�� 	
try
�� 
{
�� 
List
�� 
<
�� 
string
�� 
>
�� 
uids
�� !
=
��" #
new
��$ '
List
��( ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
foreach
�� 
(
�� 
RepeaterItem
�� %
item
��& *
in
��+ -
commentList
��. 9
.
��9 :
Items
��: ?
)
��? @
{
�� 
CheckBox
�� 
cb
�� 
=
��  !
(
��" #
CheckBox
��# +
)
��+ ,
item
��, 0
.
��0 1
FindControl
��1 <
(
��< =
$str
��= N
)
��N O
;
��O P
if
�� 
(
�� 
cb
�� 
.
�� 
Checked
�� "
)
��" #
{
�� 
HiddenField
�� #
	commentID
��$ -
=
��. /
(
��0 1
HiddenField
��1 <
)
��< =
item
��= A
.
��A B
FindControl
��B M
(
��M N
$str
��N Y
)
��Y Z
;
��Z [
uids
�� 
.
�� 
Add
��  
(
��  !
	commentID
��! *
.
��* +
Value
��+ 0
)
��0 1
;
��1 2
}
�� 
}
�� #
ChangeCommentApproval
�� %
(
��% &
uids
��& *
.
��* +
ToArray
��+ 2
(
��2 3
)
��3 4
,
��4 5
$num
��6 7
)
��7 8
;
��8 9
DisplayAllComment
�� !
(
��! "
true
��" &
)
��& '
;
��' (
ApprovedComment
�� 
otherUC
��  '
=
��( )
this
��* .
.
��. /
Page
��/ 3
.
��3 4
FindControl
��4 ?
(
��? @
$str
��@ S
)
��S T
as
��U W
ApprovedComment
��X g
;
��g h
otherUC
�� 
.
�� 
DisplayAllComment
�� )
(
��) *
false
��* /
)
��/ 0
;
��0 1
DeletedComment
�� 
otherUC2
�� '
=
��( )
this
��* .
.
��. /
Page
��/ 3
.
��3 4
FindControl
��4 ?
(
��? @
$str
��@ R
)
��R S
as
��T V
DeletedComment
��W e
;
��e f
otherUC2
�� 
.
�� 
DisplayAllComment
�� *
(
��* +
false
��+ 0
)
��0 1
;
��1 2
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Page
�� 
.
�� 
ClientScript
�� !
.
��! "#
RegisterStartupScript
��" 7
(
��7 8
this
��8 <
.
��< =
GetType
��= D
(
��D E
)
��E F
,
��F G
$str
��H O
,
��O P
$@"
��Q T>
/$(document).ready(function () {{ alert('Error: ��T �
{��� �
ex��� �
.��� �
Message��� �
}��� �
') }});��� �
"��� �
,��� �
true��� �
)��� �
;��� �
}
�� 
}
�� 	
	protected
�� 
void
�� #
BtnSearchByDate_Click
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;
	EventArgs
��< E
e
��F G
)
��G H
{
�� 	
if
�� 
(
�� 

IsPostBack
�� 
)
�� 
{
�� 
DisplayComment
�� 
(
�� 
Keyword
�� &
.
��& '
Text
��' +
,
��+ ,
CategoryList
��- 9
.
��9 :
Text
��: >
,
��> ?
DatePickerStart
��@ O
.
��O P
Text
��P T
,
��T U
DatePickerEnd
��V c
.
��c d
Text
��d h
,
��h i
true
��j n
)
��n o
;
��o p
ApprovedComment
�� 
otherUC
��  '
=
��( )
this
��* .
.
��. /
Page
��/ 3
.
��3 4
FindControl
��4 ?
(
��? @
$str
��@ S
)
��S T
as
��U W
ApprovedComment
��X g
;
��g h
otherUC
�� 
.
�� 
DisplayAllComment
�� )
(
��) *
false
��* /
)
��/ 0
;
��0 1
DeletedComment
�� 
otherUC2
�� '
=
��( )
this
��* .
.
��. /
Page
��/ 3
.
��3 4
FindControl
��4 ?
(
��? @
$str
��@ R
)
��R S
as
��T V
DeletedComment
��W e
;
��e f
otherUC2
�� 
.
�� 
DisplayAllComment
�� *
(
��* +
false
��+ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
	protected
�� 
void
�� 
BtnShowAll_Click
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
	EventArgs
��7 @
e
��A B
)
��B C
{
�� 	
if
�� 
(
�� 

IsPostBack
�� 
)
�� 
{
�� 
try
�� 
{
�� 
DisplayAllComment
�� %
(
��% &
true
��& *
)
��* +
;
��+ ,
ApprovedComment
�� #
otherUC
��$ +
=
��, -
this
��. 2
.
��2 3
Page
��3 7
.
��7 8
FindControl
��8 C
(
��C D
$str
��D W
)
��W X
as
��Y [
ApprovedComment
��\ k
;
��k l
otherUC
�� 
.
�� 
DisplayAllComment
�� -
(
��- .
false
��. 3
)
��3 4
;
��4 5
DeletedComment
�� "
otherUC2
��# +
=
��, -
this
��. 2
.
��2 3
Page
��3 7
.
��7 8
FindControl
��8 C
(
��C D
$str
��D V
)
��V W
as
��X Z
DeletedComment
��[ i
;
��i j
otherUC2
�� 
.
�� 
DisplayAllComment
�� .
(
��. /
false
��/ 4
)
��4 5
;
��5 6
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
Page
�� 
.
�� 
ClientScript
�� %
.
��% &#
RegisterStartupScript
��& ;
(
��; <
this
��< @
.
��@ A
GetType
��A H
(
��H I
)
��I J
,
��J K
$str
��L R
,
��R S
$@"
��T W>
/$(document).ready(function () {{ alert('Error: ��W �
{��� �
ex��� �
.��� �
Message��� �
}��� �
') }});��� �
"��� �
,��� �
true��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �N
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
}ww ��
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
$str	PPd �
)
PP� �
;
PP� �:
.LastUploadMortgageMultifunctionVoucherCodeNoteQQ >
.QQ> ?
TextQQ? C
=QQD E
$strQQF W
+QQX Y
GetLastUploadQQZ g
(QQg h
$str	QQh �
)
QQ� �
;
QQ� �%
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
�� 
.
�� 
ClientScript
�� !
.
��! "#
RegisterStartupScript
��" 7
(
��7 8
this
��8 <
.
��< =
GetType
��= D
(
��D E
)
��E F
,
��F G
$str
��H N
,
��N O
script
��P V
,
��V W
true
��X \
)
��\ ]
;
��] ^
}
�� 
}
�� 	
	protected
�� 
void
�� 
btnUpload_Click
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
	EventArgs
��6 ?
e
��@ A
)
��A B
{
�� 	
DirectoryInfo
�� 
dir
�� 
=
�� 
null
��  $
;
��$ %
string
�� 
	extension
�� 
,
�� 
fileName
�� &
=
��' (
string
��) /
.
��/ 0
Empty
��0 5
;
��5 6
string
�� 
path
�� 
=
�� 
string
��  
.
��  !
Empty
��! &
;
��& '
string
�� 
	tableName
�� 
=
�� 
string
�� %
.
��% &
Empty
��& +
;
��+ ,
string
�� 
getError
�� 
=
�� 
string
�� $
.
��$ %
Empty
��% *
;
��* +
DataSet
�� 
dataSet
�� 
=
�� 
new
�� !
DataSet
��" )
(
��) *
)
��* +
;
��+ ,
try
�� 
{
�� 
if
�� 
(
�� 
fuBulkUpload
��  
.
��  !
HasFile
��! (
)
��( )
{
�� 
string
�� 

folderName
�� %
=
��& '
Guid
��( ,
.
��, -
NewGuid
��- 4
(
��4 5
)
��5 6
.
��6 7
ToString
��7 ?
(
��? @
)
��@ A
;
��A B
string
�� 

folderpath
�� %
=
��& '
Server
��( .
.
��. /
MapPath
��/ 6
(
��6 7
$str
��7 S
+
��T U

folderName
��V `
+
��a b
$str
��c f
)
��f g
;
��g h
string
�� 
[
�� 
]
�� 
templatePathFiles
�� .
=
��/ 0
	Directory
��1 :
.
��: ;
GetFiles
��; C
(
��C D
Server
��D J
.
��J K
MapPath
��K R
(
��R S
$str
��S o
)
��o p
,
��p q
$str
��r y
,
��y z
SearchOption��{ �
.��� � 
TopDirectoryOnly��� �
)��� �
;��� �
List
�� 
<
�� 
string
�� 
>
��  
templateFiles
��! .
=
��/ 0
new
��1 4
List
��5 9
<
��9 :
string
��: @
>
��@ A
(
��A B
)
��B C
;
��C D
foreach
�� 
(
�� 
string
�� #
template
��$ ,
in
��- /
templatePathFiles
��0 A
)
��A B
{
�� 
templateFiles
�� %
.
��% &
Add
��& )
(
��) *
Path
��* .
.
��. /
GetFileName
��/ :
(
��: ;
template
��; C
)
��C D
.
��D E
	Substring
��E N
(
��N O
$num
��O P
,
��P Q
Path
��R V
.
��V W
GetFileName
��W b
(
��b c
template
��c k
)
��k l
.
��l m
LastIndexOf
��m x
(
��x y
$str
��y |
)
��| }
)
��} ~
)
��~ 
;�� �
}
�� 
ServerMapPath
�� !
=
��" #

folderpath
��$ .
;
��. /
dir
�� 
=
�� 
	Directory
�� #
.
��# $
CreateDirectory
��$ 3
(
��3 4

folderpath
��4 >
)
��> ?
;
��? @
	extension
�� 
=
�� 
Path
��  $
.
��$ %
GetExtension
��% 1
(
��1 2
fuBulkUpload
��2 >
.
��> ?
FileName
��? G
)
��G H
;
��H I
fileName
�� 
=
�� 
fuBulkUpload
�� +
.
��+ ,
FileName
��, 4
.
��4 5
	Substring
��5 >
(
��> ?
$num
��? @
,
��@ A
fuBulkUpload
��B N
.
��N O
FileName
��O W
.
��W X
LastIndexOf
��X c
(
��c d
$char
��d g
)
��g h
)
��h i
;
��i j
if
�� 
(
�� 
	extension
�� !
!=
��" $
$str
��% +
)
��+ ,
throw
�� 
new
�� !
FormatException
��" 1
(
��1 2
$str
��2 F
)
��F G
;
��G H
if
�� 
(
�� 
!
�� 
templateFiles
�� &
.
��& '
Contains
��' /
(
��/ 0
fileName
��0 8
)
��8 9
)
��9 :
{
�� 
throw
�� 
new
�� !
	Exception
��" +
(
��+ ,
$str
��, j
)
��j k
;
��k l
}
�� 
path
�� 
=
�� 

folderpath
�� %
+
��& '
fuBulkUpload
��( 4
.
��4 5
FileName
��5 =
;
��= >
fuBulkUpload
��  
.
��  !
SaveAs
��! '
(
��' (
path
��( ,
)
��, -
;
��- .
Data
�� 
=
�� 
LibraryHelpers
�� )
.
��) *
ConvertCSVToTable
��* ;
(
��; <
path
��< @
)
��@ A
;
��A B
UploadHelpers
�� !
.
��! "
MappedDataToDB
��" 0
(
��0 1
Data
��1 5
,
��5 6

folderpath
��7 A
.
��A B
Replace
��B I
(
��I J

folderName
��J T
,
��T U
$str
��V X
)
��X Y
+
��Z [
$str
��\ _
+
��` a
fileName
��b j
+
��k l
$str
��m s
,
��s t
fileName
��u }
)
��} ~
;
��~ 
getError
�� 
=
�� 
UploadHelpers
�� ,
.
��, -
GetErrorMessage
��- <
(
��< =
)
��= >
;
��> ?
if
�� 
(
�� 
getError
��  
==
��! #
$str
��$ +
)
��+ ,
{
�� 
litWarningError
�� '
.
��' (
Text
��( ,
=
��- .
$str
��/ m
;
��m n
Page
�� 
.
�� 
ClientScript
�� )
.
��) *'
RegisterOnSubmitStatement
��* C
(
��C D
GetType
��D K
(
��K L
)
��L M
,
��M N
$str
��O a
,
��a b
$str
��c y
)
��y z
;
��z {
}
�� 
else
�� 
{
�� 
Page
�� 
.
�� 
ClientScript
�� )
.
��) *'
RegisterOnSubmitStatement
��* C
(
��C D
GetType
��D K
(
��K L
)
��L M
,
��M N
$str
��O a
,
��a b
$str
��c y
)
��y z
;
��z {
}
�� 
File
�� 
.
�� 
Delete
�� 
(
��  
path
��  $
)
��$ %
;
��% &
}
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
fx
��# %
)
��% &
{
�� 
litAlertError
�� 
.
�� 
Text
�� "
=
��# $
fx
��% '
.
��' (
Message
��( /
;
��/ 0
Page
�� 
.
�� 
ClientScript
�� !
.
��! "#
RegisterStartupScript
��" 7
(
��7 8
GetType
��8 ?
(
��? @
)
��@ A
,
��A B
$str
��C T
,
��T U
$str
��V k
,
��k l
true
��m q
)
��q r
;
��r s
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
litAlertError
�� 
.
�� 
Text
�� "
=
��# $
$str
��% (
+
��) *
ex
��+ -
.
��- .
Message
��. 5
;
��5 6
Page
�� 
.
�� 
ClientScript
�� !
.
��! "#
RegisterStartupScript
��" 7
(
��7 8
GetType
��8 ?
(
��? @
)
��@ A
,
��A B
$str
��C T
,
��T U
$str
��V k
,
��k l
true
��m q
)
��q r
;
��r s
}
�� 
finally
�� 
{
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
path
��* .
)
��. /
)
��/ 0
File
�� 
.
�� 
Delete
�� 
(
��  
path
��  $
)
��$ %
;
��% &
dir
�� 
.
�� 
Delete
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
	protected
�� 
void
��  
btnXMLUpload_Click
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
	EventArgs
��9 B
e
��C D
)
��D E
{
�� 	
if
�� 
(
�� 
fuXML
�� 
.
�� 
HasFile
�� 
)
�� 
{
�� 
try
�� 
{
�� 
string
�� 
dirPath
�� "
=
��# $
Server
��% +
.
��+ ,
MapPath
��, 3
(
��3 4
$str
��4 O
)
��O P
;
��P Q
if
�� 
(
�� 
!
�� 
	Directory
�� "
.
��" #
Exists
��# )
(
��) *
dirPath
��* 1
)
��1 2
)
��2 3
{
�� 
	Directory
�� !
.
��! "
CreateDirectory
��" 1
(
��1 2
dirPath
��2 9
)
��9 :
;
��: ;
}
�� 
var
�� 
filePath
��  
=
��! "
Path
��# '
.
��' (
Combine
��( /
(
��/ 0
dirPath
��0 7
,
��7 8
fuXML
��9 >
.
��> ?
FileName
��? G
)
��G H
;
��H I
fuXML
�� 
.
�� 
SaveAs
��  
(
��  !
filePath
��! )
)
��) *
;
��* +
Page
�� 
.
�� 
ClientScript
�� %
.
��% &#
RegisterStartupScript
��& ;
(
��; <
GetType
��< C
(
��C D
)
��D E
,
��E F
$str
��G \
,
��\ ]
$str
��^ w
,
��w x
true
��y }
)
��} ~
;
��~ 
}
�� 
catch
�� 
(
�� 
	Exception
��  
)
��  !
{
�� 
throw
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
	protected
�� 
string
�� 
GetLastUpload
�� &
(
��& '
string
��' -
	_filename
��. 7
)
��7 8
{
�� 	
return
�� 
Library
�� 
.
�� 
DAL
�� 
.
�� 

DataAccess
�� )
.
��) *
GetItem
��* 1
(
��1 2
string
��2 8
.
��8 9
Format
��9 ?
(
��? @
$str��@ �
,��� �
	_filename��� �
)��� �
)��� �
.��� �
Replace��� �
(��� �
$str��� �
,��� �
$str��� �
)��� �
;��� �
}
�� 	
	protected
�� 
void
�� 

UploadFile
�� !
(
��! "

FileUpload
��" ,
fuBulkUpload
��- 9
,
��9 :
string
��; A
	_filename
��B K
)
��K L
{
�� 	
Thread
�� 
.
�� 
Sleep
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
DirectoryInfo
�� 
dir
�� 
=
�� 
null
��  $
;
��$ %
string
�� 
	extension
�� 
,
�� 
fileName
�� &
=
��' (
string
��) /
.
��/ 0
Empty
��0 5
;
��5 6
string
�� 
path
�� 
=
�� 
string
��  
.
��  !
Empty
��! &
;
��& '
string
�� 
	tableName
�� 
=
�� 
string
�� %
.
��% &
Empty
��& +
;
��+ ,
string
�� 
getError
�� 
=
�� 
string
�� $
.
��$ %
Empty
��% *
;
��* +
DataSet
�� 
dataSet
�� 
=
�� 
new
�� !
DataSet
��" )
(
��) *
)
��* +
;
��+ ,
try
�� 
{
�� 
if
�� 
(
�� 
fuBulkUpload
��  
.
��  !
HasFile
��! (
)
��( )
{
�� 
string
�� 

folderName
�� %
=
��& '
Guid
��( ,
.
��, -
NewGuid
��- 4
(
��4 5
)
��5 6
.
��6 7
ToString
��7 ?
(
��? @
)
��@ A
;
��A B
string
�� 

folderpath
�� %
=
��& '
Server
��( .
.
��. /
MapPath
��/ 6
(
��6 7
$str
��7 S
+
��T U

folderName
��V `
+
��a b
$str
��c f
)
��f g
;
��g h
string
�� 
[
�� 
]
�� 
templatePathFiles
�� .
=
��/ 0
	Directory
��1 :
.
��: ;
GetFiles
��; C
(
��C D
Server
��D J
.
��J K
MapPath
��K R
(
��R S
$str
��S o
)
��o p
,
��p q
$str
��r y
,
��y z
SearchOption��{ �
.��� � 
TopDirectoryOnly��� �
)��� �
;��� �
List
�� 
<
�� 
string
�� 
>
��  
templateFiles
��! .
=
��/ 0
new
��1 4
List
��5 9
<
��9 :
string
��: @
>
��@ A
(
��A B
)
��B C
;
��C D
foreach
�� 
(
�� 
string
�� #
template
��$ ,
in
��- /
templatePathFiles
��0 A
)
��A B
{
�� 
templateFiles
�� %
.
��% &
Add
��& )
(
��) *
Path
��* .
.
��. /
GetFileName
��/ :
(
��: ;
template
��; C
)
��C D
.
��D E
	Substring
��E N
(
��N O
$num
��O P
,
��P Q
Path
��R V
.
��V W
GetFileName
��W b
(
��b c
template
��c k
)
��k l
.
��l m
LastIndexOf
��m x
(
��x y
$str
��y |
)
��| }
)
��} ~
)
��~ 
;�� �
}
�� 
ServerMapPath
�� !
=
��" #

folderpath
��$ .
;
��. /
dir
�� 
=
�� 
	Directory
�� #
.
��# $
CreateDirectory
��$ 3
(
��3 4

folderpath
��4 >
)
��> ?
;
��? @
	extension
�� 
=
�� 
Path
��  $
.
��$ %
GetExtension
��% 1
(
��1 2
fuBulkUpload
��2 >
.
��> ?
FileName
��? G
)
��G H
;
��H I
fileName
�� 
=
�� 
fuBulkUpload
�� +
.
��+ ,
FileName
��, 4
.
��4 5
	Substring
��5 >
(
��> ?
$num
��? @
,
��@ A
fuBulkUpload
��B N
.
��N O
FileName
��O W
.
��W X
LastIndexOf
��X c
(
��c d
$char
��d g
)
��g h
)
��h i
;
��i j
if
�� 
(
�� 
	extension
�� !
!=
��" $
$str
��% +
)
��+ ,
throw
�� 
new
�� !
FormatException
��" 1
(
��1 2
$str
��2 F
)
��F G
;
��G H
if
�� 
(
�� 
	_filename
�� !
!=
��" $
fileName
��% -
)
��- .
{
�� 
throw
�� 
new
�� !
	Exception
��" +
(
��+ ,
$str
��, \
+
��] ^
	_filename
��_ h
+
��i j
$str��k �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
!
�� 
templateFiles
�� &
.
��& '
Contains
��' /
(
��/ 0
fileName
��0 8
)
��8 9
)
��9 :
{
�� 
throw
�� 
new
�� !
	Exception
��" +
(
��+ ,
$str
��, j
)
��j k
;
��k l
}
�� 
path
�� 
=
�� 

folderpath
�� %
+
��& '
fuBulkUpload
��( 4
.
��4 5
FileName
��5 =
;
��= >
fuBulkUpload
��  
.
��  !
SaveAs
��! '
(
��' (
path
��( ,
)
��, -
;
��- .
Data
�� 
=
�� 
LibraryHelpers
�� )
.
��) *
ConvertCSVToTable
��* ;
(
��; <
path
��< @
)
��@ A
;
��A B
UploadHelpers
�� !
.
��! "
MappedDataToDB
��" 0
(
��0 1
Data
��1 5
,
��5 6

folderpath
��7 A
.
��A B
Replace
��B I
(
��I J

folderName
��J T
,
��T U
$str
��V X
)
��X Y
+
��Z [
$str
��\ _
+
��` a
fileName
��b j
+
��k l
$str
��m s
,
��s t
fileName
��u }
)
��} ~
;
��~ 
getError
�� 
=
�� 
UploadHelpers
�� ,
.
��, -
GetErrorMessage
��- <
(
��< =
)
��= >
;
��> ?
if
�� 
(
�� 
getError
��  
==
��! #
$str
��$ +
)
��+ ,
{
�� 
litWarningError
�� '
.
��' (
Text
��( ,
=
��- .
$str
��/ m
;
��m n
Page
�� 
.
�� 
ClientScript
�� )
.
��) *#
RegisterStartupScript
��* ?
(
��? @
GetType
��@ G
(
��G H
)
��H I
,
��I J
$str
��K ]
,
��] ^
$str
��_ u
,
��u v
true
��w {
)
��{ |
;
��| }
}
�� 
else
�� 
{
�� 
fuBulkUpload
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
;
��. /
Page
�� 
.
�� 
ClientScript
�� )
.
��) *#
RegisterStartupScript
��* ?
(
��? @
GetType
��@ G
(
��G H
)
��H I
,
��I J
$str
��K ]
,
��] ^
$str
��_ u
,
��u v
true
��w {
)
��{ |
;
��| }
}
�� 
File
�� 
.
�� 
Delete
�� 
(
��  
path
��  $
)
��$ %
;
��% &
}
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
fx
��# %
)
��% &
{
�� 
litAlertError
�� 
.
�� 
Text
�� "
=
��# $
fx
��% '
.
��' (
Message
��( /
;
��/ 0
Page
�� 
.
�� 
ClientScript
�� !
.
��! "#
RegisterStartupScript
��" 7
(
��7 8
GetType
��8 ?
(
��? @
)
��@ A
,
��A B
$str
��C T
,
��T U
$str
��V k
,
��k l
true
��m q
)
��q r
;
��r s
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
litAlertError
�� 
.
�� 
Text
�� "
=
��# $
$str
��% (
+
��) *
ex
��+ -
.
��- .
Message
��. 5
;
��5 6
Page
�� 
.
�� 
ClientScript
�� !
.
��! "#
RegisterStartupScript
��" 7
(
��7 8
GetType
��8 ?
(
��? @
)
��@ A
,
��A B
$str
��C T
,
��T U
$str
��V k
,
��k l
true
��m q
)
��q r
;
��r s
}
�� 
finally
�� 
{
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
path
��* .
)
��. /
)
��/ 0
File
�� 
.
�� 
Delete
�� 
(
��  
path
��  $
)
��$ %
;
��% &
dir
�� 
.
�� 
Delete
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
	protected
�� 
void
�� *
btnUploadBranchReguler_Click
�� 3
(
��3 4
object
��4 :
sender
��; A
,
��A B
	EventArgs
��C L
e
��M N
)
��N O
{
�� 	

UploadFile
�� 
(
�� '
fuBulkUploadBranchReguler
�� 0
,
��0 1
$str
��2 C
)
��C D
;
��D E%
LastUploadBranchReguler
�� #
.
��# $
Text
��$ (
=
��) *
$str
��+ <
+
��= >
GetLastUpload
��? L
(
��L M
$str
��M ^
)
��^ _
;
��_ `
}
�� 	
	protected
�� 
void
�� *
btnUploadBranchPremier_Click
�� 3
(
��3 4
object
��4 :
sender
��; A
,
��A B
	EventArgs
��C L
e
��M N
)
��N O
{
�� 	

UploadFile
�� 
(
�� '
fuBulkUploadBranchPremier
�� 0
,
��0 1
$str
��2 K
)
��K L
;
��L M%
LastUploadBranchPremier
�� #
.
��# $
Text
��$ (
=
��) *
$str
��+ <
+
��= >
GetLastUpload
��? L
(
��L M
$str
��M f
)
��f g
;
��g h
}
�� 	
	protected
�� 
void
�� *
btnUploadBranchSyariah_Click
�� 3
(
��3 4
object
��4 :
sender
��; A
,
��A B
	EventArgs
��C L
e
��M N
)
��N O
{
�� 	

UploadFile
�� 
(
�� '
fuBulkUploadBranchSyariah
�� 0
,
��0 1
$str
��2 K
)
��K L
;
��L M%
LastUploadBranchSyariah
�� #
.
��# $
Text
��$ (
=
��) *
$str
��+ <
+
��= >
GetLastUpload
��? L
(
��L M
$str
��M f
)
��f g
;
��g h
}
�� 	
	protected
�� 
void
�� 1
#btnUploadBranchWeekendBanking_Click
�� :
(
��: ;
object
��; A
sender
��B H
,
��H I
	EventArgs
��J S
e
��T U
)
��U V
{
�� 	

UploadFile
�� 
(
�� .
 fuBulkUploadBranchWeekendBanking
�� 7
,
��7 8
$str
��9 Z
)
��Z [
;
��[ \,
LastUploadBranchWeekendBanking
�� *
.
��* +
Text
��+ /
=
��0 1
$str
��2 C
+
��D E
GetLastUpload
��F S
(
��S T
$str
��T u
)
��u v
;
��v w
}
�� 	
	protected
�� 
void
��  
btnUploadATM_Click
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
	EventArgs
��9 B
e
��C D
)
��D E
{
�� 	

UploadFile
�� 
(
�� 
fuBulkUploadATM
�� &
,
��& '
$str
��( 6
)
��6 7
;
��7 8
LastUploadATM
�� 
.
�� 
Text
�� 
=
��  
$str
��! 2
+
��3 4
GetLastUpload
��5 B
(
��B C
$str
��C Q
)
��Q R
;
��R S
}
�� 	
	protected
�� 
void
�� &
btnUploadPerumahan_Click
�� /
(
��/ 0
object
��0 6
sender
��7 =
,
��= >
	EventArgs
��? H
e
��I J
)
��J K
{
�� 	

UploadFile
�� 
(
�� #
fuBulkUploadPerumahan
�� ,
,
��, -
$str
��. 9
)
��9 :
;
��: ;!
LastUploadPerumahan
�� 
.
��  
Text
��  $
=
��% &
$str
��' 8
+
��9 :
GetLastUpload
��; H
(
��H I
$str
��I T
)
��T U
;
��U V
}
�� 	
	protected
�� 
void
�� &
btnUploadReksadana_Click
�� /
(
��/ 0
object
��0 6
sender
��7 =
,
��= >
	EventArgs
��? H
e
��I J
)
��J K
{
�� 	

UploadFile
�� 
(
�� #
fuBulkUploadReksadana
�� ,
,
��, -
$str
��. 9
)
��9 :
;
��: ;!
LastUploadReksadana
�� 
.
��  
Text
��  $
=
��% &
$str
��' 8
+
��9 :
GetLastUpload
��; H
(
��H I
$str
��I T
)
��T U
;
��U V
}
�� 	
	protected
�� 
void
�� &
btnUploadListMobil_Click
�� /
(
��/ 0
object
��0 6
sender
��7 =
,
��= >
	EventArgs
��? H
e
��I J
)
��J K
{
�� 	

UploadFile
�� 
(
�� #
fuBulkUploadListMobil
�� ,
,
��, -
$str
��. 4
)
��4 5
;
��5 6!
LastUploadListMobil
�� 
.
��  
Text
��  $
=
��% &
$str
��' 8
+
��9 :
GetLastUpload
��; H
(
��H I
$str
��I O
)
��O P
;
��P Q
}
�� 	
	protected
�� 
void
�� &
btnUploadListMotor_Click
�� /
(
��/ 0
object
��0 6
sender
��7 =
,
��= >
	EventArgs
��? H
e
��I J
)
��J K
{
�� 	

UploadFile
�� 
(
�� #
fuBulkUploadListMotor
�� ,
,
��, -
$str
��. :
)
��: ;
;
��; <!
LastUploadListMotor
�� 
.
��  
Text
��  $
=
��% &
$str
��' 8
+
��9 :
GetLastUpload
��; H
(
��H I
$str
��I U
)
��U V
;
��V W
}
�� 	
	protected
�� 
void
�� %
btnUploadRateADDM_Click
�� .
(
��. /
object
��/ 5
sender
��6 <
,
��< =
	EventArgs
��> G
e
��H I
)
��I J
{
�� 	

UploadFile
�� 
(
�� "
fuBulkUploadRateADDM
�� +
,
��+ ,
$str
��- 8
)
��8 9
;
��9 : 
LastUploadRateADDM
�� 
.
�� 
Text
�� #
=
��$ %
$str
��& 7
+
��8 9
GetLastUpload
��: G
(
��G H
$str
��H S
)
��S T
;
��T U
}
�� 	
	protected
�� 
void
�� 3
%btnUploadRateExtentionInsurance_Click
�� <
(
��< =
object
��= C
sender
��D J
,
��J K
	EventArgs
��L U
e
��V W
)
��W X
{
�� 	

UploadFile
�� 
(
�� 0
"fuBulkUploadRateExtentionInsurance
�� 9
,
��9 :
$str
��; U
)
��U V
;
��V W.
 LastUploadRateExtentionInsurance
�� ,
.
��, -
Text
��- 1
=
��2 3
$str
��4 E
+
��F G
GetLastUpload
��H U
(
��U V
$str
��V p
)
��p q
;
��q r
}
�� 	
	protected
�� 
void
�� -
btnUploadInsuranceAllRisk_Click
�� 6
(
��6 7
object
��7 =
sender
��> D
,
��D E
	EventArgs
��F O
e
��P Q
)
��Q R
{
�� 	

UploadFile
�� 
(
�� *
fuBulkUploadInsuranceAllRisk
�� 3
,
��3 4
$str
��5 ?
)
��? @
;
��@ A(
LastUploadInsuranceAllRisk
�� &
.
��& '
Text
��' +
=
��, -
$str
��. ?
+
��@ A
GetLastUpload
��B O
(
��O P
$str
��P Z
)
��Z [
;
��[ \
}
�� 	
	protected
�� 
void
�� (
btnUploadTJHCoverage_Click
�� 1
(
��1 2
object
��2 8
sender
��9 ?
,
��? @
	EventArgs
��A J
e
��K L
)
��L M
{
�� 	

UploadFile
�� 
(
�� %
fuBulkUploadTJHCoverage
�� .
,
��. /
$str
��0 >
)
��> ?
;
��? @#
LastUploadTJHCoverage
�� !
.
��! "
Text
��" &
=
��' (
$str
��) :
+
��; <
GetLastUpload
��= J
(
��J K
$str
��K Y
)
��Y Z
;
��Z [
}
�� 	
	protected
�� 
void
�� $
btnUploadKodePos_Click
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <
	EventArgs
��= F
e
��G H
)
��H I
{
�� 	

UploadFile
�� 
(
�� !
fuBulkUploadKodePos
�� *
,
��* +
$str
��, 5
)
��5 6
;
��6 7
LastUploadKodePos
�� 
.
�� 
Text
�� "
=
��# $
$str
��% 6
+
��7 8
GetLastUpload
��9 F
(
��F G
$str
��G P
)
��P Q
;
��Q R
}
�� 	
	protected
�� 
void
�� (
btnUploadBidangUsaha_Click
�� 1
(
��1 2
object
��2 8
sender
��9 ?
,
��? @
	EventArgs
��A J
e
��K L
)
��L M
{
�� 	

UploadFile
�� 
(
�� %
fuBulkUploadBidangUsaha
�� .
,
��. /
$str
��0 =
)
��= >
;
��> ?#
LastUploadBidangUsaha
�� !
.
��! "
Text
��" &
=
��' (
$str
��) :
+
��; <
GetLastUpload
��= J
(
��J K
$str
��K X
)
��X Y
;
��Y Z
}
�� 	
	protected
�� 
void
�� +
btnUploadJenisPekerjaan_Click
�� 4
(
��4 5
object
��5 ;
sender
��< B
,
��B C
	EventArgs
��D M
e
��N O
)
��O P
{
�� 	

UploadFile
�� 
(
�� (
fuBulkUploadJenisPekerjaan
�� 1
,
��1 2
$str
��3 C
)
��C D
;
��D E&
LastUploadJenisPekerjaan
�� $
.
��$ %
Text
��% )
=
��* +
$str
��, =
+
��> ?
GetLastUpload
��@ M
(
��M N
$str
��N ^
)
��^ _
;
��_ `
}
�� 	
	protected
�� 
void
�� (
btnUploadVoucherCode_Click
�� 1
(
��1 2
object
��2 8
sender
��9 ?
,
��? @
	EventArgs
��A J
e
��K L
)
��L M
{
�� 	

UploadFile
�� 
(
�� %
fuBulkUploadVoucherCode
�� .
,
��. /
$str
��0 :
)
��: ;
;
��; <#
LastUploadVoucherCode
�� !
.
��! "
Text
��" &
=
��' (
$str
��) :
+
��; <
GetLastUpload
��= J
(
��J K
$str
��K U
)
��U V
;
��V W
}
�� 	
	protected
�� 
void
�� 0
"btnUploadBusinessVoucherCode_Click
�� 9
(
��9 :
object
��: @
sender
��A G
,
��G H
	EventArgs
��I R
e
��S T
)
��T U
{
�� 	

UploadFile
�� 
(
�� -
fuBulkUploadBusinessVoucherCode
�� 6
,
��6 7
$str
��8 J
)
��J K
;
��K L+
LastUploadBusinessVoucherCode
�� )
.
��) *
Text
��* .
=
��/ 0
$str
��1 B
+
��C D
GetLastUpload
��E R
(
��R S
$str
��S e
)
��e f
;
��f g/
!LastUploadBusinessVoucherCodeNote
�� -
.
��- .
Text
��. 2
=
��3 4
$str
��5 F
+
��G H
GetLastUpload
��I V
(
��V W
$str
��W i
)
��i j
;
��j k
}
�� 	
	protected
�� 
void
�� 2
$btnUploadCreditCardVoucherCode_Click
�� ;
(
��; <
object
��< B
sender
��C I
,
��I J
	EventArgs
��K T
e
��U V
)
��V W
{
�� 	

UploadFile
�� 
(
�� /
!fuBulkUploadCreditCardVoucherCode
�� 8
,
��8 9
$str
��: N
)
��N O
;
��O P-
LastUploadCreditCardVoucherCode
�� +
.
��+ ,
Text
��, 0
=
��1 2
$str
��3 D
+
��E F
GetLastUpload
��G T
(
��T U
$str
��U i
)
��i j
;
��j k1
#LastUploadCreditCardVoucherCodeNote
�� /
.
��/ 0
Text
��0 4
=
��5 6
$str
��7 H
+
��I J
GetLastUpload
��K X
(
��X Y
$str
��Y m
)
��m n
;
��n o
}
�� 	
	protected
�� 
void
�� ,
btnUploadLoanVoucherCode_Click
�� 5
(
��5 6
object
��6 <
sender
��= C
,
��C D
	EventArgs
��E N
e
��O P
)
��P Q
{
�� 	

UploadFile
�� 
(
�� )
fuBulkUploadLoanVoucherCode
�� 2
,
��2 3
$str
��4 B
)
��B C
;
��C D'
LastUploadLoanVoucherCode
�� %
.
��% &
Text
��& *
=
��+ ,
$str
��- >
+
��? @
GetLastUpload
��A N
(
��N O
$str
��O ]
)
��] ^
;
��^ _+
LastUploadLoanVoucherCodeNote
�� )
.
��) *
Text
��* .
=
��/ 0
$str
��1 B
+
��C D
GetLastUpload
��E R
(
��R S
$str
��S a
)
��a b
;
��b c
}
�� 	
	protected
�� 
void
�� =
/btnUploadMortgageMultifunctionVoucherCode_Click
�� F
(
��F G
object
��G M
sender
��N T
,
��T U
	EventArgs
��V _
e
��` a
)
��a b
{
�� 	

UploadFile
�� 
(
�� :
,fuBulkUploadMortgageMultifunctionVoucherCode
�� C
,
��C D
$str
��E d
)
��d e
;
��e f8
*LastUploadMortgageMultifunctionVoucherCode
�� 6
.
��6 7
Text
��7 ;
=
��< =
$str
��> O
+
��P Q
GetLastUpload
��R _
(
��_ `
$str
��` 
)�� �
;��� �<
.LastUploadMortgageMultifunctionVoucherCodeNote
�� :
.
��: ;
Text
��; ?
=
��@ A
$str
��B S
+
��T U
GetLastUpload
��V c
(
��c d
$str��d �
)��� �
;��� �
}
�� 	
	protected
�� 
void
�� .
 btnUploadSavingVoucherCode_Click
�� 7
(
��7 8
object
��8 >
sender
��? E
,
��E F
	EventArgs
��G P
e
��Q R
)
��R S
{
�� 	

UploadFile
�� 
(
�� +
fuBulkUploadSavingVoucherCode
�� 4
,
��4 5
$str
��6 F
)
��F G
;
��G H)
LastUploadSavingVoucherCode
�� '
.
��' (
Text
��( ,
=
��- .
$str
��/ @
+
��A B
GetLastUpload
��C P
(
��P Q
$str
��Q a
)
��a b
;
��b c-
LastUploadSavingVoucherCodeNote
�� +
.
��+ ,
Text
��, 0
=
��1 2
$str
��3 D
+
��E F
GetLastUpload
��G T
(
��T U
$str
��U e
)
��e f
;
��f g
}
�� 	
	protected
�� 
void
�� /
!btnUploadSyariahVoucherCode_Click
�� 8
(
��8 9
object
��9 ?
sender
��@ F
,
��F G
	EventArgs
��H Q
e
��R S
)
��S T
{
�� 	

UploadFile
�� 
(
�� ,
fuBulkUploadSyariahVoucherCode
�� 5
,
��5 6
$str
��7 H
)
��H I
;
��I J*
LastUploadSyariahVoucherCode
�� (
.
��( )
Text
��) -
=
��. /
$str
��0 A
+
��B C
GetLastUpload
��D Q
(
��Q R
$str
��R c
)
��c d
;
��d e.
 LastUploadSyariahVoucherCodeNote
�� ,
.
��, -
Text
��- 1
=
��2 3
$str
��4 E
+
��F G
GetLastUpload
��H U
(
��U V
$str
��V g
)
��g h
;
��h i
}
�� 	
}
�� 
}�� �
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