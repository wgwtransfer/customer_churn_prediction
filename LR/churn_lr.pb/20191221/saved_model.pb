Їф
¤*▀*
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
ю
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
Н
IteratorFromStringHandleV2
string_handle
resource_handle" 
output_types
list(type)
 (""
output_shapeslist(shape)
 (И
А
IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
C
IteratorToStringHandle
resource_handle
string_handleИ
2
L2Loss
t"T
output"T"
Ttype:
2
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
.
Log1p
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z
Р


LogicalNot
x

y

;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
п
OneShotIterator

handle"
dataset_factoryfunc"
output_types
list(type)(0" 
output_shapeslist(shape)(0"
	containerstring "
shared_namestring И
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
А
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12
b'unknown'ЪЛ
\
ConstConst*'
valueB B./data/train.tfrecords*
dtype0*
_output_shapes
: 
g
flat_filenames/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
i
flat_filenamesReshapeConstflat_filenames/shape*
T0*
Tshape0*
_output_shapes
:
M
buffer_sizeConst*
value	B	 Rd*
dtype0	*
_output_shapes
: 
F
seedConst*
value	B	 R *
dtype0	*
_output_shapes
: 
G
seed2Const*
dtype0	*
_output_shapes
: *
value	B	 R 
P
countConst*
valueB	 R
         *
dtype0	*
_output_shapes
: 
M

batch_sizeConst*
value
B	 RА*
dtype0	*
_output_shapes
: 
P
drop_remainderConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
]
Const_1Const*
dtype0*
_output_shapes
: *&
valueB B./data/test.tfrecords
i
flat_filenames_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
o
flat_filenames_1ReshapeConst_1flat_filenames_1/shape*
Tshape0*
_output_shapes
:*
T0
R
count_1Const*
_output_shapes
: *
valueB	 R
         *
dtype0	
P
batch_size_1Const*
valueB		 RХИ*
dtype0	*
_output_shapes
: 
R
drop_remainder_1Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
L
PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 
─
IteratorFromStringHandleV2IteratorFromStringHandleV2Placeholder"/device:CPU:0*
_output_shapes
: *
output_types
2*>
output_shapes-
+:                  :         
d
IteratorToStringHandleIteratorToStringHandleIteratorFromStringHandleV2*
_output_shapes
: 
ш
OneShotIteratorOneShotIterator*
	container *
output_types
2*
_output_shapes
: *0
dataset_factoryR
_make_dataset_13dOIAx89Yw*
shared_name *>
output_shapes-
+:                  :         
[
IteratorToStringHandle_1IteratorToStringHandleOneShotIterator*
_output_shapes
: 
ъ
OneShotIterator_1OneShotIterator*
_output_shapes
: *0
dataset_factoryR
_make_dataset_BtvnBLVn3mY*
shared_name *>
output_shapes-
+:                  :         *
	container *
output_types
2
]
IteratorToStringHandle_2IteratorToStringHandleOneShotIterator_1*
_output_shapes
: 
╫
IteratorGetNextIteratorGetNextIteratorFromStringHandleV2*?
_output_shapes-
+:                  :         *
output_types
2*>
output_shapes-
+:                  :         
[
global_step/initial_valueConst*
value	B : *
dtype0*
_output_shapes
: 
o
global_step
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
о
global_step/AssignAssignglobal_stepglobal_step/initial_value*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0*
_class
loc:@global_step
Л
'beta/Initializer/truncated_normal/shapeConst*
valueB:║*
_class
	loc:@beta*
dtype0*
_output_shapes
:
Д
&beta/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *
_class
	loc:@beta*
dtype0
Ж
(beta/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *o╖к=*
_class
	loc:@beta
╥
1beta/Initializer/truncated_normal/TruncatedNormalTruncatedNormal'beta/Initializer/truncated_normal/shape*
dtype0*
_output_shapes	
:║*

seed *
T0*
_class
	loc:@beta*
seed2 
╚
%beta/Initializer/truncated_normal/mulMul1beta/Initializer/truncated_normal/TruncatedNormal(beta/Initializer/truncated_normal/stddev*
T0*
_class
	loc:@beta*
_output_shapes	
:║
╢
!beta/Initializer/truncated_normalAdd%beta/Initializer/truncated_normal/mul&beta/Initializer/truncated_normal/mean*
T0*
_class
	loc:@beta*
_output_shapes	
:║
Л
beta
VariableV2*
dtype0*
_output_shapes	
:║*
shared_name *
_class
	loc:@beta*
	container *
shape:║
ж
beta/AssignAssignbeta!beta/Initializer/truncated_normal*
use_locking(*
T0*
_class
	loc:@beta*
validate_shape(*
_output_shapes	
:║
Z
	beta/readIdentitybeta*
_class
	loc:@beta*
_output_shapes	
:║*
T0
b
lr_layer/MulMul	beta/readIteratorGetNext*(
_output_shapes
:         ║*
T0
a
lr_layer/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
П
lr_layer/MeanMeanlr_layer/Mullr_layer/Mean/reduction_indices*#
_output_shapes
:         *
	keep_dims( *

Tidx0*
T0
S
lr_layer/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
q
lr_layer/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
й
lr_layer/bias/AssignAssignlr_layer/biaslr_layer/Const*
use_locking(*
T0* 
_class
loc:@lr_layer/bias*
validate_shape(*
_output_shapes
: 
p
lr_layer/bias/readIdentitylr_layer/bias*
T0* 
_class
loc:@lr_layer/bias*
_output_shapes
: 
g
lr_layer/outputAddlr_layer/Meanlr_layer/bias/read*
T0*#
_output_shapes
:         
W
predict/logitSigmoidlr_layer/output*
T0*#
_output_shapes
:         
W
predict/auc/Cast/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
О
-predict/auc/assert_greater_equal/GreaterEqualGreaterEqualpredict/logitpredict/auc/Cast/x*#
_output_shapes
:         *
T0
p
&predict/auc/assert_greater_equal/ConstConst*
_output_shapes
:*
valueB: *
dtype0
╖
$predict/auc/assert_greater_equal/AllAll-predict/auc/assert_greater_equal/GreaterEqual&predict/auc/assert_greater_equal/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
Л
-predict/auc/assert_greater_equal/Assert/ConstConst*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
▒
/predict/auc/assert_greater_equal/Assert/Const_1Const*
dtype0*
_output_shapes
: *R
valueIBG BACondition x >= y did not hold element-wise:x (predict/logit:0) = 
Л
/predict/auc/assert_greater_equal/Assert/Const_2Const*,
value#B! By (predict/auc/Cast/x:0) = *
dtype0*
_output_shapes
: 
│
:predict/auc/assert_greater_equal/Assert/AssertGuard/SwitchSwitch$predict/auc/assert_greater_equal/All$predict/auc/assert_greater_equal/All*
T0
*
_output_shapes
: : 
з
<predict/auc/assert_greater_equal/Assert/AssertGuard/switch_tIdentity<predict/auc/assert_greater_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
е
<predict/auc/assert_greater_equal/Assert/AssertGuard/switch_fIdentity:predict/auc/assert_greater_equal/Assert/AssertGuard/Switch*
_output_shapes
: *
T0

О
;predict/auc/assert_greater_equal/Assert/AssertGuard/pred_idIdentity$predict/auc/assert_greater_equal/All*
T0
*
_output_shapes
: 

8predict/auc/assert_greater_equal/Assert/AssertGuard/NoOpNoOp=^predict/auc/assert_greater_equal/Assert/AssertGuard/switch_t
╜
Fpredict/auc/assert_greater_equal/Assert/AssertGuard/control_dependencyIdentity<predict/auc/assert_greater_equal/Assert/AssertGuard/switch_t9^predict/auc/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*O
_classE
CAloc:@predict/auc/assert_greater_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
▐
Apredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const=^predict/auc/assert_greater_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
В
Apredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const=^predict/auc/assert_greater_equal/Assert/AssertGuard/switch_f*
dtype0*
_output_shapes
: *R
valueIBG BACondition x >= y did not hold element-wise:x (predict/logit:0) = 
▄
Apredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3Const=^predict/auc/assert_greater_equal/Assert/AssertGuard/switch_f*,
value#B! By (predict/auc/Cast/x:0) = *
dtype0*
_output_shapes
: 
√
:predict/auc/assert_greater_equal/Assert/AssertGuard/AssertAssertApredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/SwitchApredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0Apredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1Cpredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Apredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3Cpredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2*
T	
2*
	summarize
К
Apredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/SwitchSwitch$predict/auc/assert_greater_equal/All;predict/auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0
*7
_class-
+)loc:@predict/auc/assert_greater_equal/All*
_output_shapes
: : 
°
Cpredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Switchpredict/logit;predict/auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0* 
_class
loc:@predict/logit*2
_output_shapes 
:         :         
ш
Cpredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2Switchpredict/auc/Cast/x;predict/auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*%
_class
loc:@predict/auc/Cast/x*
_output_shapes
: : 
┴
Hpredict/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1Identity<predict/auc/assert_greater_equal/Assert/AssertGuard/switch_f;^predict/auc/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*O
_classE
CAloc:@predict/auc/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
А
9predict/auc/assert_greater_equal/Assert/AssertGuard/MergeMergeHpredict/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1Fpredict/auc/assert_greater_equal/Assert/AssertGuard/control_dependency*
N*
_output_shapes
: : *
T0

Y
predict/auc/Cast_1/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
З
'predict/auc/assert_less_equal/LessEqual	LessEqualpredict/logitpredict/auc/Cast_1/x*#
_output_shapes
:         *
T0
m
#predict/auc/assert_less_equal/ConstConst*
valueB: *
dtype0*
_output_shapes
:
л
!predict/auc/assert_less_equal/AllAll'predict/auc/assert_less_equal/LessEqual#predict/auc/assert_less_equal/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
И
*predict/auc/assert_less_equal/Assert/ConstConst*
_output_shapes
: *.
value%B# Bpredictions must be in [0, 1]*
dtype0
о
,predict/auc/assert_less_equal/Assert/Const_1Const*R
valueIBG BACondition x <= y did not hold element-wise:x (predict/logit:0) = *
dtype0*
_output_shapes
: 
К
,predict/auc/assert_less_equal/Assert/Const_2Const*.
value%B# By (predict/auc/Cast_1/x:0) = *
dtype0*
_output_shapes
: 
к
7predict/auc/assert_less_equal/Assert/AssertGuard/SwitchSwitch!predict/auc/assert_less_equal/All!predict/auc/assert_less_equal/All*
T0
*
_output_shapes
: : 
б
9predict/auc/assert_less_equal/Assert/AssertGuard/switch_tIdentity9predict/auc/assert_less_equal/Assert/AssertGuard/Switch:1*
_output_shapes
: *
T0

Я
9predict/auc/assert_less_equal/Assert/AssertGuard/switch_fIdentity7predict/auc/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
И
8predict/auc/assert_less_equal/Assert/AssertGuard/pred_idIdentity!predict/auc/assert_less_equal/All*
T0
*
_output_shapes
: 
y
5predict/auc/assert_less_equal/Assert/AssertGuard/NoOpNoOp:^predict/auc/assert_less_equal/Assert/AssertGuard/switch_t
▒
Cpredict/auc/assert_less_equal/Assert/AssertGuard/control_dependencyIdentity9predict/auc/assert_less_equal/Assert/AssertGuard/switch_t6^predict/auc/assert_less_equal/Assert/AssertGuard/NoOp*L
_classB
@>loc:@predict/auc/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: *
T0

╪
>predict/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0Const:^predict/auc/assert_less_equal/Assert/AssertGuard/switch_f*.
value%B# Bpredictions must be in [0, 1]*
dtype0*
_output_shapes
: 
№
>predict/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1Const:^predict/auc/assert_less_equal/Assert/AssertGuard/switch_f*R
valueIBG BACondition x <= y did not hold element-wise:x (predict/logit:0) = *
dtype0*
_output_shapes
: 
╪
>predict/auc/assert_less_equal/Assert/AssertGuard/Assert/data_3Const:^predict/auc/assert_less_equal/Assert/AssertGuard/switch_f*.
value%B# By (predict/auc/Cast_1/x:0) = *
dtype0*
_output_shapes
: 
ц
7predict/auc/assert_less_equal/Assert/AssertGuard/AssertAssert>predict/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch>predict/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0>predict/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1@predict/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1>predict/auc/assert_less_equal/Assert/AssertGuard/Assert/data_3@predict/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
T	
2*
	summarize
■
>predict/auc/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch!predict/auc/assert_less_equal/All8predict/auc/assert_less_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0
*4
_class*
(&loc:@predict/auc/assert_less_equal/All
Є
@predict/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switchpredict/logit8predict/auc/assert_less_equal/Assert/AssertGuard/pred_id*
T0* 
_class
loc:@predict/logit*2
_output_shapes 
:         :         
ц
@predict/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switchpredict/auc/Cast_1/x8predict/auc/assert_less_equal/Assert/AssertGuard/pred_id*
T0*'
_class
loc:@predict/auc/Cast_1/x*
_output_shapes
: : 
╡
Epredict/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1Identity9predict/auc/assert_less_equal/Assert/AssertGuard/switch_f8^predict/auc/assert_less_equal/Assert/AssertGuard/Assert*L
_classB
@>loc:@predict/auc/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
T0

ў
6predict/auc/assert_less_equal/Assert/AssertGuard/MergeMergeEpredict/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1Cpredict/auc/assert_less_equal/Assert/AssertGuard/control_dependency*
N*
_output_shapes
: : *
T0

я
predict/auc/Cast_2CastIteratorGetNext:1:^predict/auc/assert_greater_equal/Assert/AssertGuard/Merge7^predict/auc/assert_less_equal/Assert/AssertGuard/Merge*
Truncate( *#
_output_shapes
:         *

DstT0
*

SrcT0
j
predict/auc/Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
И
predict/auc/ReshapeReshapepredict/logitpredict/auc/Reshape/shape*'
_output_shapes
:         *
T0*
Tshape0
l
predict/auc/Reshape_1/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
С
predict/auc/Reshape_1Reshapepredict/auc/Cast_2predict/auc/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:         
d
predict/auc/ShapeShapepredict/auc/Reshape*
T0*
out_type0*
_output_shapes
:
i
predict/auc/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!predict/auc/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
k
!predict/auc/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╡
predict/auc/strided_sliceStridedSlicepredict/auc/Shapepredict/auc/strided_slice/stack!predict/auc/strided_slice/stack_1!predict/auc/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
А
predict/auc/ConstConst*
dtype0*
_output_shapes	
:╚*╣
valueпBм╚"аХ┐╓│╧йд;╧й$<╖■v<╧йд<C╘═<╖■Ў<Х=╧й$=	?9=C╘M=}ib=╖■v=°╔Е=ХР=2_Ъ=╧йд=lЇо=	?╣=жЙ├=C╘═=р╪=}iт=┤ь=╖■Ў=кд >°╔>Gя
>Х>ф9>2_>БД>╧й$>╧)>lЇ.>╗4>	?9>Wd>>жЙC>ЇоH>C╘M>С∙R>рX>.D]>}ib>╦Оg>┤l>h┘q>╖■v>$|>кдА>Q7Г>°╔Е>а\И>GяК>юБН>ХР><зТ>ф9Х>Л╠Ч>2_Ъ>┘ёЬ>БДЯ>(в>╧йд>v<з>╧й>┼aм>lЇо>З▒>╗┤>bм╢>	?╣>░╤╗>Wd╛> Ў└>жЙ├>M╞>Їо╚>ЬA╦>C╘═>ъf╨>С∙╥>9М╒>р╪>З▒┌>.D▌>╓╓▀>}iт>$№ф>╦Оч>r!ъ>┤ь>┴Fя>h┘ё>lЇ>╖■Ў>^С∙>$№>м╢■>кд ?¤э?Q7?еА?°╔?L?а\?єе	?Gя
?Ъ8?юБ?B╦?Х?щ]?<з?РЁ?ф9?7Г?Л╠?▀?2_?Жи?┘ё?-;?БД?╘═ ?("?{`#?╧й$?#є%?v<'?╩Е(?╧)?q+?┼a,?л-?lЇ.?└=0?З1?g╨2?╗4?c5?bм6?╡ї7?	?9?]И:?░╤;?=?Wd>?лн?? Ў@?R@B?жЙC?·╥D?MF?бeG?ЇоH?H°I?ЬAK?яКL?C╘M?ЧO?ъfP?>░Q?С∙R?хBT?9МU?М╒V?рX?3hY?З▒Z?█·[?.D]?ВН^?╓╓_?) a?}ib?╨▓c?$№d?xEf?╦Оg?╪h?r!j?╞jk?┤l?m¤m?┴Fo?Рp?h┘q?╝"s?lt?c╡u?╖■v?
Hx?^Сy?▓┌z?$|?Ym}?м╢~? А?
d
predict/auc/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
Й
predict/auc/ExpandDims
ExpandDimspredict/auc/Constpredict/auc/ExpandDims/dim*
T0*
_output_shapes
:	╚*

Tdim0
U
predict/auc/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
Г
predict/auc/stackPackpredict/auc/stack/0predict/auc/strided_slice*
_output_shapes
:*
T0*

axis *
N
И
predict/auc/TileTilepredict/auc/ExpandDimspredict/auc/stack*

Tmultiples0*
T0*(
_output_shapes
:╚         
k
predict/auc/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Т
predict/auc/transpose	Transposepredict/auc/Reshapepredict/auc/transpose/perm*
T0*'
_output_shapes
:         *
Tperm0
m
predict/auc/Tile_1/multiplesConst*
valueB"╚      *
dtype0*
_output_shapes
:
Ф
predict/auc/Tile_1Tilepredict/auc/transposepredict/auc/Tile_1/multiples*

Tmultiples0*
T0*(
_output_shapes
:╚         
w
predict/auc/GreaterGreaterpredict/auc/Tile_1predict/auc/Tile*
T0*(
_output_shapes
:╚         
c
predict/auc/LogicalNot
LogicalNotpredict/auc/Greater*(
_output_shapes
:╚         
m
predict/auc/Tile_2/multiplesConst*
_output_shapes
:*
valueB"╚      *
dtype0
Ф
predict/auc/Tile_2Tilepredict/auc/Reshape_1predict/auc/Tile_2/multiples*

Tmultiples0*
T0
*(
_output_shapes
:╚         
d
predict/auc/LogicalNot_1
LogicalNotpredict/auc/Tile_2*(
_output_shapes
:╚         
к
,predict/auc/true_positives/Initializer/zerosConst*
dtype0*
_output_shapes	
:╚*
valueB╚*    *-
_class#
!loc:@predict/auc/true_positives
╖
predict/auc/true_positives
VariableV2*
shape:╚*
dtype0*
_output_shapes	
:╚*
shared_name *-
_class#
!loc:@predict/auc/true_positives*
	container 
є
!predict/auc/true_positives/AssignAssignpredict/auc/true_positives,predict/auc/true_positives/Initializer/zeros*
_output_shapes	
:╚*
use_locking(*
T0*-
_class#
!loc:@predict/auc/true_positives*
validate_shape(
Ь
predict/auc/true_positives/readIdentitypredict/auc/true_positives*
T0*-
_class#
!loc:@predict/auc/true_positives*
_output_shapes	
:╚
w
predict/auc/LogicalAnd
LogicalAndpredict/auc/Tile_2predict/auc/Greater*(
_output_shapes
:╚         
Е
predict/auc/ToFloatCastpredict/auc/LogicalAnd*

SrcT0
*
Truncate( *(
_output_shapes
:╚         *

DstT0
c
!predict/auc/Sum/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
С
predict/auc/SumSumpredict/auc/ToFloat!predict/auc/Sum/reduction_indices*
T0*
_output_shapes	
:╚*
	keep_dims( *

Tidx0
╖
predict/auc/AssignAdd	AssignAddpredict/auc/true_positivespredict/auc/Sum*
use_locking( *
T0*-
_class#
!loc:@predict/auc/true_positives*
_output_shapes	
:╚
м
-predict/auc/false_negatives/Initializer/zerosConst*
valueB╚*    *.
_class$
" loc:@predict/auc/false_negatives*
dtype0*
_output_shapes	
:╚
╣
predict/auc/false_negatives
VariableV2*
shared_name *.
_class$
" loc:@predict/auc/false_negatives*
	container *
shape:╚*
dtype0*
_output_shapes	
:╚
ў
"predict/auc/false_negatives/AssignAssignpredict/auc/false_negatives-predict/auc/false_negatives/Initializer/zeros*
validate_shape(*
_output_shapes	
:╚*
use_locking(*
T0*.
_class$
" loc:@predict/auc/false_negatives
Я
 predict/auc/false_negatives/readIdentitypredict/auc/false_negatives*
T0*.
_class$
" loc:@predict/auc/false_negatives*
_output_shapes	
:╚
|
predict/auc/LogicalAnd_1
LogicalAndpredict/auc/Tile_2predict/auc/LogicalNot*(
_output_shapes
:╚         
Й
predict/auc/ToFloat_1Castpredict/auc/LogicalAnd_1*

SrcT0
*
Truncate( *(
_output_shapes
:╚         *

DstT0
e
#predict/auc/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
predict/auc/Sum_1Sumpredict/auc/ToFloat_1#predict/auc/Sum_1/reduction_indices*
_output_shapes	
:╚*
	keep_dims( *

Tidx0*
T0
╜
predict/auc/AssignAdd_1	AssignAddpredict/auc/false_negativespredict/auc/Sum_1*
_output_shapes	
:╚*
use_locking( *
T0*.
_class$
" loc:@predict/auc/false_negatives
к
,predict/auc/true_negatives/Initializer/zerosConst*
dtype0*
_output_shapes	
:╚*
valueB╚*    *-
_class#
!loc:@predict/auc/true_negatives
╖
predict/auc/true_negatives
VariableV2*
	container *
shape:╚*
dtype0*
_output_shapes	
:╚*
shared_name *-
_class#
!loc:@predict/auc/true_negatives
є
!predict/auc/true_negatives/AssignAssignpredict/auc/true_negatives,predict/auc/true_negatives/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@predict/auc/true_negatives*
validate_shape(*
_output_shapes	
:╚
Ь
predict/auc/true_negatives/readIdentitypredict/auc/true_negatives*
_output_shapes	
:╚*
T0*-
_class#
!loc:@predict/auc/true_negatives
В
predict/auc/LogicalAnd_2
LogicalAndpredict/auc/LogicalNot_1predict/auc/LogicalNot*(
_output_shapes
:╚         
Й
predict/auc/ToFloat_2Castpredict/auc/LogicalAnd_2*

SrcT0
*
Truncate( *(
_output_shapes
:╚         *

DstT0
e
#predict/auc/Sum_2/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
predict/auc/Sum_2Sumpredict/auc/ToFloat_2#predict/auc/Sum_2/reduction_indices*
_output_shapes	
:╚*
	keep_dims( *

Tidx0*
T0
╗
predict/auc/AssignAdd_2	AssignAddpredict/auc/true_negativespredict/auc/Sum_2*
_output_shapes	
:╚*
use_locking( *
T0*-
_class#
!loc:@predict/auc/true_negatives
м
-predict/auc/false_positives/Initializer/zerosConst*
valueB╚*    *.
_class$
" loc:@predict/auc/false_positives*
dtype0*
_output_shapes	
:╚
╣
predict/auc/false_positives
VariableV2*.
_class$
" loc:@predict/auc/false_positives*
	container *
shape:╚*
dtype0*
_output_shapes	
:╚*
shared_name 
ў
"predict/auc/false_positives/AssignAssignpredict/auc/false_positives-predict/auc/false_positives/Initializer/zeros*
_output_shapes	
:╚*
use_locking(*
T0*.
_class$
" loc:@predict/auc/false_positives*
validate_shape(
Я
 predict/auc/false_positives/readIdentitypredict/auc/false_positives*
_output_shapes	
:╚*
T0*.
_class$
" loc:@predict/auc/false_positives

predict/auc/LogicalAnd_3
LogicalAndpredict/auc/LogicalNot_1predict/auc/Greater*(
_output_shapes
:╚         
Й
predict/auc/ToFloat_3Castpredict/auc/LogicalAnd_3*

SrcT0
*
Truncate( *(
_output_shapes
:╚         *

DstT0
e
#predict/auc/Sum_3/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
predict/auc/Sum_3Sumpredict/auc/ToFloat_3#predict/auc/Sum_3/reduction_indices*
T0*
_output_shapes	
:╚*
	keep_dims( *

Tidx0
╜
predict/auc/AssignAdd_3	AssignAddpredict/auc/false_positivespredict/auc/Sum_3*
_output_shapes	
:╚*
use_locking( *
T0*.
_class$
" loc:@predict/auc/false_positives
V
predict/auc/add/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
p
predict/auc/addAddpredict/auc/true_positives/readpredict/auc/add/y*
T0*
_output_shapes	
:╚
Б
predict/auc/add_1Addpredict/auc/true_positives/read predict/auc/false_negatives/read*
T0*
_output_shapes	
:╚
X
predict/auc/add_2/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
f
predict/auc/add_2Addpredict/auc/add_1predict/auc/add_2/y*
T0*
_output_shapes	
:╚
d
predict/auc/divRealDivpredict/auc/addpredict/auc/add_2*
T0*
_output_shapes	
:╚
Б
predict/auc/add_3Add predict/auc/false_positives/readpredict/auc/true_negatives/read*
T0*
_output_shapes	
:╚
X
predict/auc/add_4/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
f
predict/auc/add_4Addpredict/auc/add_3predict/auc/add_4/y*
_output_shapes	
:╚*
T0
w
predict/auc/div_1RealDiv predict/auc/false_positives/readpredict/auc/add_4*
_output_shapes	
:╚*
T0
k
!predict/auc/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#predict/auc/strided_slice_1/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┬
predict/auc/strided_slice_1StridedSlicepredict/auc/div_1!predict/auc/strided_slice_1/stack#predict/auc/strided_slice_1/stack_1#predict/auc/strided_slice_1/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes	
:╟*
Index0*
T0
k
!predict/auc/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┬
predict/auc/strided_slice_2StridedSlicepredict/auc/div_1!predict/auc/strided_slice_2/stack#predict/auc/strided_slice_2/stack_1#predict/auc/strided_slice_2/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes	
:╟*
T0*
Index0*
shrink_axis_mask 
v
predict/auc/subSubpredict/auc/strided_slice_1predict/auc/strided_slice_2*
T0*
_output_shapes	
:╟
k
!predict/auc/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#predict/auc/strided_slice_3/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_3/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
└
predict/auc/strided_slice_3StridedSlicepredict/auc/div!predict/auc/strided_slice_3/stack#predict/auc/strided_slice_3/stack_1#predict/auc/strided_slice_3/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes	
:╟
k
!predict/auc/strided_slice_4/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_4/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
└
predict/auc/strided_slice_4StridedSlicepredict/auc/div!predict/auc/strided_slice_4/stack#predict/auc/strided_slice_4/stack_1#predict/auc/strided_slice_4/stack_2*
new_axis_mask *
end_mask*
_output_shapes	
:╟*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask 
x
predict/auc/add_5Addpredict/auc/strided_slice_3predict/auc/strided_slice_4*
T0*
_output_shapes	
:╟
Z
predict/auc/truediv/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
n
predict/auc/truedivRealDivpredict/auc/add_5predict/auc/truediv/y*
T0*
_output_shapes	
:╟
b
predict/auc/MulMulpredict/auc/subpredict/auc/truediv*
T0*
_output_shapes	
:╟
]
predict/auc/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
|
predict/auc/valueSumpredict/auc/Mulpredict/auc/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
X
predict/auc/add_6/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
j
predict/auc/add_6Addpredict/auc/AssignAddpredict/auc/add_6/y*
_output_shapes	
:╚*
T0
n
predict/auc/add_7Addpredict/auc/AssignAddpredict/auc/AssignAdd_1*
_output_shapes	
:╚*
T0
X
predict/auc/add_8/yConst*
dtype0*
_output_shapes
: *
valueB
 *╜7Ж5
f
predict/auc/add_8Addpredict/auc/add_7predict/auc/add_8/y*
_output_shapes	
:╚*
T0
h
predict/auc/div_2RealDivpredict/auc/add_6predict/auc/add_8*
T0*
_output_shapes	
:╚
p
predict/auc/add_9Addpredict/auc/AssignAdd_3predict/auc/AssignAdd_2*
T0*
_output_shapes	
:╚
Y
predict/auc/add_10/yConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
h
predict/auc/add_10Addpredict/auc/add_9predict/auc/add_10/y*
T0*
_output_shapes	
:╚
o
predict/auc/div_3RealDivpredict/auc/AssignAdd_3predict/auc/add_10*
_output_shapes	
:╚*
T0
k
!predict/auc/strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#predict/auc/strided_slice_5/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┬
predict/auc/strided_slice_5StridedSlicepredict/auc/div_3!predict/auc/strided_slice_5/stack#predict/auc/strided_slice_5/stack_1#predict/auc/strided_slice_5/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes	
:╟
k
!predict/auc/strided_slice_6/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_6/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┬
predict/auc/strided_slice_6StridedSlicepredict/auc/div_3!predict/auc/strided_slice_6/stack#predict/auc/strided_slice_6/stack_1#predict/auc/strided_slice_6/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes	
:╟*
T0*
Index0
x
predict/auc/sub_1Subpredict/auc/strided_slice_5predict/auc/strided_slice_6*
_output_shapes	
:╟*
T0
k
!predict/auc/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
#predict/auc/strided_slice_7/stack_1Const*
valueB:╟*
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┬
predict/auc/strided_slice_7StridedSlicepredict/auc/div_2!predict/auc/strided_slice_7/stack#predict/auc/strided_slice_7/stack_1#predict/auc/strided_slice_7/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes	
:╟*
T0*
Index0
k
!predict/auc/strided_slice_8/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_8/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
m
#predict/auc/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┬
predict/auc/strided_slice_8StridedSlicepredict/auc/div_2!predict/auc/strided_slice_8/stack#predict/auc/strided_slice_8/stack_1#predict/auc/strided_slice_8/stack_2*
new_axis_mask *
end_mask*
_output_shapes	
:╟*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask 
y
predict/auc/add_11Addpredict/auc/strided_slice_7predict/auc/strided_slice_8*
_output_shapes	
:╟*
T0
\
predict/auc/truediv_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
s
predict/auc/truediv_1RealDivpredict/auc/add_11predict/auc/truediv_1/y*
T0*
_output_shapes	
:╟
h
predict/auc/Mul_1Mulpredict/auc/sub_1predict/auc/truediv_1*
T0*
_output_shapes	
:╟
]
predict/auc/Const_2Const*
dtype0*
_output_shapes
:*
valueB: 
В
predict/auc/update_opSumpredict/auc/Mul_1predict/auc/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
A
loss/L2LossL2Loss	beta/read*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
I
loss/mulMul
loss/mul/xloss/L2Loss*
T0*
_output_shapes
: 
e
loss/Reshape/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x
loss/ReshapeReshapelr_layer/outputloss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:         
g
loss/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
~
loss/Reshape_1ReshapeIteratorGetNext:1loss/Reshape_1/shape*
T0*
Tshape0*#
_output_shapes
:         
f
loss/logistic_loss/zeros_like	ZerosLikeloss/Reshape*
T0*#
_output_shapes
:         
К
loss/logistic_loss/GreaterEqualGreaterEqualloss/Reshapeloss/logistic_loss/zeros_like*#
_output_shapes
:         *
T0
Я
loss/logistic_loss/SelectSelectloss/logistic_loss/GreaterEqualloss/Reshapeloss/logistic_loss/zeros_like*
T0*#
_output_shapes
:         
Y
loss/logistic_loss/NegNegloss/Reshape*#
_output_shapes
:         *
T0
Ъ
loss/logistic_loss/Select_1Selectloss/logistic_loss/GreaterEqualloss/logistic_loss/Negloss/Reshape*
T0*#
_output_shapes
:         
i
loss/logistic_loss/mulMulloss/Reshapeloss/Reshape_1*#
_output_shapes
:         *
T0
~
loss/logistic_loss/subSubloss/logistic_loss/Selectloss/logistic_loss/mul*
T0*#
_output_shapes
:         
h
loss/logistic_loss/ExpExploss/logistic_loss/Select_1*
T0*#
_output_shapes
:         
g
loss/logistic_loss/Log1pLog1ploss/logistic_loss/Exp*
T0*#
_output_shapes
:         
y
loss/logistic_lossAddloss/logistic_loss/subloss/logistic_loss/Log1p*
T0*#
_output_shapes
:         
T

loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
o
	loss/MeanMeanloss/logistic_loss
loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
E
loss/addAdd	loss/Meanloss/mul*
_output_shapes
: *
T0
m
(optimizer/ExponentialDecay/learning_rateConst*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
c
!optimizer/ExponentialDecay/Cast/xConst*
value	B :d*
dtype0*
_output_shapes
: 
К
optimizer/ExponentialDecay/CastCast!optimizer/ExponentialDecay/Cast/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
h
#optimizer/ExponentialDecay/Cast_1/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
{
!optimizer/ExponentialDecay/Cast_2Castglobal_step/read*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
Т
"optimizer/ExponentialDecay/truedivRealDiv!optimizer/ExponentialDecay/Cast_2optimizer/ExponentialDecay/Cast*
T0*
_output_shapes
: 
П
optimizer/ExponentialDecay/PowPow#optimizer/ExponentialDecay/Cast_1/x"optimizer/ExponentialDecay/truediv*
_output_shapes
: *
T0
М
optimizer/ExponentialDecayMul(optimizer/ExponentialDecay/learning_rateoptimizer/ExponentialDecay/Pow*
_output_shapes
: *
T0
\
optimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
b
optimizer/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Н
optimizer/gradients/FillFilloptimizer/gradients/Shapeoptimizer/gradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
U
2optimizer/gradients/loss/add_grad/tuple/group_depsNoOp^optimizer/gradients/Fill
у
:optimizer/gradients/loss/add_grad/tuple/control_dependencyIdentityoptimizer/gradients/Fill3^optimizer/gradients/loss/add_grad/tuple/group_deps*+
_class!
loc:@optimizer/gradients/Fill*
_output_shapes
: *
T0
х
<optimizer/gradients/loss/add_grad/tuple/control_dependency_1Identityoptimizer/gradients/Fill3^optimizer/gradients/loss/add_grad/tuple/group_deps*
T0*+
_class!
loc:@optimizer/gradients/Fill*
_output_shapes
: 
z
0optimizer/gradients/loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
╓
*optimizer/gradients/loss/Mean_grad/ReshapeReshape:optimizer/gradients/loss/add_grad/tuple/control_dependency0optimizer/gradients/loss/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
z
(optimizer/gradients/loss/Mean_grad/ShapeShapeloss/logistic_loss*
T0*
out_type0*
_output_shapes
:
┼
'optimizer/gradients/loss/Mean_grad/TileTile*optimizer/gradients/loss/Mean_grad/Reshape(optimizer/gradients/loss/Mean_grad/Shape*#
_output_shapes
:         *

Tmultiples0*
T0
|
*optimizer/gradients/loss/Mean_grad/Shape_1Shapeloss/logistic_loss*
T0*
out_type0*
_output_shapes
:
m
*optimizer/gradients/loss/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
r
(optimizer/gradients/loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
├
'optimizer/gradients/loss/Mean_grad/ProdProd*optimizer/gradients/loss/Mean_grad/Shape_1(optimizer/gradients/loss/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
t
*optimizer/gradients/loss/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
╟
)optimizer/gradients/loss/Mean_grad/Prod_1Prod*optimizer/gradients/loss/Mean_grad/Shape_2*optimizer/gradients/loss/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
n
,optimizer/gradients/loss/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
п
*optimizer/gradients/loss/Mean_grad/MaximumMaximum)optimizer/gradients/loss/Mean_grad/Prod_1,optimizer/gradients/loss/Mean_grad/Maximum/y*
_output_shapes
: *
T0
н
+optimizer/gradients/loss/Mean_grad/floordivFloorDiv'optimizer/gradients/loss/Mean_grad/Prod*optimizer/gradients/loss/Mean_grad/Maximum*
T0*
_output_shapes
: 
Ь
'optimizer/gradients/loss/Mean_grad/CastCast+optimizer/gradients/loss/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
╡
*optimizer/gradients/loss/Mean_grad/truedivRealDiv'optimizer/gradients/loss/Mean_grad/Tile'optimizer/gradients/loss/Mean_grad/Cast*#
_output_shapes
:         *
T0
Ш
%optimizer/gradients/loss/mul_grad/MulMul<optimizer/gradients/loss/add_grad/tuple/control_dependency_1loss/L2Loss*
T0*
_output_shapes
: 
Щ
'optimizer/gradients/loss/mul_grad/Mul_1Mul<optimizer/gradients/loss/add_grad/tuple/control_dependency_1
loss/mul/x*
_output_shapes
: *
T0
М
2optimizer/gradients/loss/mul_grad/tuple/group_depsNoOp&^optimizer/gradients/loss/mul_grad/Mul(^optimizer/gradients/loss/mul_grad/Mul_1
¤
:optimizer/gradients/loss/mul_grad/tuple/control_dependencyIdentity%optimizer/gradients/loss/mul_grad/Mul3^optimizer/gradients/loss/mul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@optimizer/gradients/loss/mul_grad/Mul*
_output_shapes
: 
Г
<optimizer/gradients/loss/mul_grad/tuple/control_dependency_1Identity'optimizer/gradients/loss/mul_grad/Mul_13^optimizer/gradients/loss/mul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@optimizer/gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
З
1optimizer/gradients/loss/logistic_loss_grad/ShapeShapeloss/logistic_loss/sub*
T0*
out_type0*
_output_shapes
:
Л
3optimizer/gradients/loss/logistic_loss_grad/Shape_1Shapeloss/logistic_loss/Log1p*
T0*
out_type0*
_output_shapes
:
 
Aoptimizer/gradients/loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgs1optimizer/gradients/loss/logistic_loss_grad/Shape3optimizer/gradients/loss/logistic_loss_grad/Shape_1*
T0*2
_output_shapes 
:         :         
х
/optimizer/gradients/loss/logistic_loss_grad/SumSum*optimizer/gradients/loss/Mean_grad/truedivAoptimizer/gradients/loss/logistic_loss_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
▐
3optimizer/gradients/loss/logistic_loss_grad/ReshapeReshape/optimizer/gradients/loss/logistic_loss_grad/Sum1optimizer/gradients/loss/logistic_loss_grad/Shape*
Tshape0*#
_output_shapes
:         *
T0
щ
1optimizer/gradients/loss/logistic_loss_grad/Sum_1Sum*optimizer/gradients/loss/Mean_grad/truedivCoptimizer/gradients/loss/logistic_loss_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ф
5optimizer/gradients/loss/logistic_loss_grad/Reshape_1Reshape1optimizer/gradients/loss/logistic_loss_grad/Sum_13optimizer/gradients/loss/logistic_loss_grad/Shape_1*#
_output_shapes
:         *
T0*
Tshape0
▓
<optimizer/gradients/loss/logistic_loss_grad/tuple/group_depsNoOp4^optimizer/gradients/loss/logistic_loss_grad/Reshape6^optimizer/gradients/loss/logistic_loss_grad/Reshape_1
║
Doptimizer/gradients/loss/logistic_loss_grad/tuple/control_dependencyIdentity3optimizer/gradients/loss/logistic_loss_grad/Reshape=^optimizer/gradients/loss/logistic_loss_grad/tuple/group_deps*#
_output_shapes
:         *
T0*F
_class<
:8loc:@optimizer/gradients/loss/logistic_loss_grad/Reshape
└
Foptimizer/gradients/loss/logistic_loss_grad/tuple/control_dependency_1Identity5optimizer/gradients/loss/logistic_loss_grad/Reshape_1=^optimizer/gradients/loss/logistic_loss_grad/tuple/group_deps*#
_output_shapes
:         *
T0*H
_class>
<:loc:@optimizer/gradients/loss/logistic_loss_grad/Reshape_1
Ю
(optimizer/gradients/loss/L2Loss_grad/mulMul	beta/read<optimizer/gradients/loss/mul_grad/tuple/control_dependency_1*
_output_shapes	
:║*
T0
О
5optimizer/gradients/loss/logistic_loss/sub_grad/ShapeShapeloss/logistic_loss/Select*
_output_shapes
:*
T0*
out_type0
Н
7optimizer/gradients/loss/logistic_loss/sub_grad/Shape_1Shapeloss/logistic_loss/mul*
T0*
out_type0*
_output_shapes
:
Л
Eoptimizer/gradients/loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs5optimizer/gradients/loss/logistic_loss/sub_grad/Shape7optimizer/gradients/loss/logistic_loss/sub_grad/Shape_1*2
_output_shapes 
:         :         *
T0
З
3optimizer/gradients/loss/logistic_loss/sub_grad/SumSumDoptimizer/gradients/loss/logistic_loss_grad/tuple/control_dependencyEoptimizer/gradients/loss/logistic_loss/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ъ
7optimizer/gradients/loss/logistic_loss/sub_grad/ReshapeReshape3optimizer/gradients/loss/logistic_loss/sub_grad/Sum5optimizer/gradients/loss/logistic_loss/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
Л
5optimizer/gradients/loss/logistic_loss/sub_grad/Sum_1SumDoptimizer/gradients/loss/logistic_loss_grad/tuple/control_dependencyGoptimizer/gradients/loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ф
3optimizer/gradients/loss/logistic_loss/sub_grad/NegNeg5optimizer/gradients/loss/logistic_loss/sub_grad/Sum_1*
T0*
_output_shapes
:
ю
9optimizer/gradients/loss/logistic_loss/sub_grad/Reshape_1Reshape3optimizer/gradients/loss/logistic_loss/sub_grad/Neg7optimizer/gradients/loss/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
╛
@optimizer/gradients/loss/logistic_loss/sub_grad/tuple/group_depsNoOp8^optimizer/gradients/loss/logistic_loss/sub_grad/Reshape:^optimizer/gradients/loss/logistic_loss/sub_grad/Reshape_1
╩
Hoptimizer/gradients/loss/logistic_loss/sub_grad/tuple/control_dependencyIdentity7optimizer/gradients/loss/logistic_loss/sub_grad/ReshapeA^optimizer/gradients/loss/logistic_loss/sub_grad/tuple/group_deps*#
_output_shapes
:         *
T0*J
_class@
><loc:@optimizer/gradients/loss/logistic_loss/sub_grad/Reshape
╨
Joptimizer/gradients/loss/logistic_loss/sub_grad/tuple/control_dependency_1Identity9optimizer/gradients/loss/logistic_loss/sub_grad/Reshape_1A^optimizer/gradients/loss/logistic_loss/sub_grad/tuple/group_deps*
T0*L
_classB
@>loc:@optimizer/gradients/loss/logistic_loss/sub_grad/Reshape_1*#
_output_shapes
:         
┼
7optimizer/gradients/loss/logistic_loss/Log1p_grad/add/xConstG^optimizer/gradients/loss/logistic_loss_grad/tuple/control_dependency_1*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╗
5optimizer/gradients/loss/logistic_loss/Log1p_grad/addAdd7optimizer/gradients/loss/logistic_loss/Log1p_grad/add/xloss/logistic_loss/Exp*#
_output_shapes
:         *
T0
п
<optimizer/gradients/loss/logistic_loss/Log1p_grad/Reciprocal
Reciprocal5optimizer/gradients/loss/logistic_loss/Log1p_grad/add*
T0*#
_output_shapes
:         
Ё
5optimizer/gradients/loss/logistic_loss/Log1p_grad/mulMulFoptimizer/gradients/loss/logistic_loss_grad/tuple/control_dependency_1<optimizer/gradients/loss/logistic_loss/Log1p_grad/Reciprocal*
T0*#
_output_shapes
:         
Ж
=optimizer/gradients/loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/Reshape*
T0*#
_output_shapes
:         
Ы
9optimizer/gradients/loss/logistic_loss/Select_grad/SelectSelectloss/logistic_loss/GreaterEqualHoptimizer/gradients/loss/logistic_loss/sub_grad/tuple/control_dependency=optimizer/gradients/loss/logistic_loss/Select_grad/zeros_like*#
_output_shapes
:         *
T0
Э
;optimizer/gradients/loss/logistic_loss/Select_grad/Select_1Selectloss/logistic_loss/GreaterEqual=optimizer/gradients/loss/logistic_loss/Select_grad/zeros_likeHoptimizer/gradients/loss/logistic_loss/sub_grad/tuple/control_dependency*
T0*#
_output_shapes
:         
┼
Coptimizer/gradients/loss/logistic_loss/Select_grad/tuple/group_depsNoOp:^optimizer/gradients/loss/logistic_loss/Select_grad/Select<^optimizer/gradients/loss/logistic_loss/Select_grad/Select_1
╘
Koptimizer/gradients/loss/logistic_loss/Select_grad/tuple/control_dependencyIdentity9optimizer/gradients/loss/logistic_loss/Select_grad/SelectD^optimizer/gradients/loss/logistic_loss/Select_grad/tuple/group_deps*
T0*L
_classB
@>loc:@optimizer/gradients/loss/logistic_loss/Select_grad/Select*#
_output_shapes
:         
┌
Moptimizer/gradients/loss/logistic_loss/Select_grad/tuple/control_dependency_1Identity;optimizer/gradients/loss/logistic_loss/Select_grad/Select_1D^optimizer/gradients/loss/logistic_loss/Select_grad/tuple/group_deps*N
_classD
B@loc:@optimizer/gradients/loss/logistic_loss/Select_grad/Select_1*#
_output_shapes
:         *
T0
Б
5optimizer/gradients/loss/logistic_loss/mul_grad/ShapeShapeloss/Reshape*
T0*
out_type0*
_output_shapes
:
Е
7optimizer/gradients/loss/logistic_loss/mul_grad/Shape_1Shapeloss/Reshape_1*
_output_shapes
:*
T0*
out_type0
Л
Eoptimizer/gradients/loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5optimizer/gradients/loss/logistic_loss/mul_grad/Shape7optimizer/gradients/loss/logistic_loss/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
─
3optimizer/gradients/loss/logistic_loss/mul_grad/MulMulJoptimizer/gradients/loss/logistic_loss/sub_grad/tuple/control_dependency_1loss/Reshape_1*
T0*#
_output_shapes
:         
Ў
3optimizer/gradients/loss/logistic_loss/mul_grad/SumSum3optimizer/gradients/loss/logistic_loss/mul_grad/MulEoptimizer/gradients/loss/logistic_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ъ
7optimizer/gradients/loss/logistic_loss/mul_grad/ReshapeReshape3optimizer/gradients/loss/logistic_loss/mul_grad/Sum5optimizer/gradients/loss/logistic_loss/mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
─
5optimizer/gradients/loss/logistic_loss/mul_grad/Mul_1Mulloss/ReshapeJoptimizer/gradients/loss/logistic_loss/sub_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:         
№
5optimizer/gradients/loss/logistic_loss/mul_grad/Sum_1Sum5optimizer/gradients/loss/logistic_loss/mul_grad/Mul_1Goptimizer/gradients/loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ё
9optimizer/gradients/loss/logistic_loss/mul_grad/Reshape_1Reshape5optimizer/gradients/loss/logistic_loss/mul_grad/Sum_17optimizer/gradients/loss/logistic_loss/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
╛
@optimizer/gradients/loss/logistic_loss/mul_grad/tuple/group_depsNoOp8^optimizer/gradients/loss/logistic_loss/mul_grad/Reshape:^optimizer/gradients/loss/logistic_loss/mul_grad/Reshape_1
╩
Hoptimizer/gradients/loss/logistic_loss/mul_grad/tuple/control_dependencyIdentity7optimizer/gradients/loss/logistic_loss/mul_grad/ReshapeA^optimizer/gradients/loss/logistic_loss/mul_grad/tuple/group_deps*
T0*J
_class@
><loc:@optimizer/gradients/loss/logistic_loss/mul_grad/Reshape*#
_output_shapes
:         
╨
Joptimizer/gradients/loss/logistic_loss/mul_grad/tuple/control_dependency_1Identity9optimizer/gradients/loss/logistic_loss/mul_grad/Reshape_1A^optimizer/gradients/loss/logistic_loss/mul_grad/tuple/group_deps*L
_classB
@>loc:@optimizer/gradients/loss/logistic_loss/mul_grad/Reshape_1*#
_output_shapes
:         *
T0
╖
3optimizer/gradients/loss/logistic_loss/Exp_grad/mulMul5optimizer/gradients/loss/logistic_loss/Log1p_grad/mulloss/logistic_loss/Exp*
T0*#
_output_shapes
:         
Т
?optimizer/gradients/loss/logistic_loss/Select_1_grad/zeros_like	ZerosLikeloss/logistic_loss/Neg*#
_output_shapes
:         *
T0
К
;optimizer/gradients/loss/logistic_loss/Select_1_grad/SelectSelectloss/logistic_loss/GreaterEqual3optimizer/gradients/loss/logistic_loss/Exp_grad/mul?optimizer/gradients/loss/logistic_loss/Select_1_grad/zeros_like*#
_output_shapes
:         *
T0
М
=optimizer/gradients/loss/logistic_loss/Select_1_grad/Select_1Selectloss/logistic_loss/GreaterEqual?optimizer/gradients/loss/logistic_loss/Select_1_grad/zeros_like3optimizer/gradients/loss/logistic_loss/Exp_grad/mul*
T0*#
_output_shapes
:         
╦
Eoptimizer/gradients/loss/logistic_loss/Select_1_grad/tuple/group_depsNoOp<^optimizer/gradients/loss/logistic_loss/Select_1_grad/Select>^optimizer/gradients/loss/logistic_loss/Select_1_grad/Select_1
▄
Moptimizer/gradients/loss/logistic_loss/Select_1_grad/tuple/control_dependencyIdentity;optimizer/gradients/loss/logistic_loss/Select_1_grad/SelectF^optimizer/gradients/loss/logistic_loss/Select_1_grad/tuple/group_deps*
T0*N
_classD
B@loc:@optimizer/gradients/loss/logistic_loss/Select_1_grad/Select*#
_output_shapes
:         
т
Ooptimizer/gradients/loss/logistic_loss/Select_1_grad/tuple/control_dependency_1Identity=optimizer/gradients/loss/logistic_loss/Select_1_grad/Select_1F^optimizer/gradients/loss/logistic_loss/Select_1_grad/tuple/group_deps*
T0*P
_classF
DBloc:@optimizer/gradients/loss/logistic_loss/Select_1_grad/Select_1*#
_output_shapes
:         
╖
3optimizer/gradients/loss/logistic_loss/Neg_grad/NegNegMoptimizer/gradients/loss/logistic_loss/Select_1_grad/tuple/control_dependency*#
_output_shapes
:         *
T0
┬
optimizer/gradients/AddNAddNKoptimizer/gradients/loss/logistic_loss/Select_grad/tuple/control_dependencyHoptimizer/gradients/loss/logistic_loss/mul_grad/tuple/control_dependencyOoptimizer/gradients/loss/logistic_loss/Select_1_grad/tuple/control_dependency_13optimizer/gradients/loss/logistic_loss/Neg_grad/Neg*
N*#
_output_shapes
:         *
T0*L
_classB
@>loc:@optimizer/gradients/loss/logistic_loss/Select_grad/Select
z
+optimizer/gradients/loss/Reshape_grad/ShapeShapelr_layer/output*
out_type0*
_output_shapes
:*
T0
╗
-optimizer/gradients/loss/Reshape_grad/ReshapeReshapeoptimizer/gradients/AddN+optimizer/gradients/loss/Reshape_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
{
.optimizer/gradients/lr_layer/output_grad/ShapeShapelr_layer/Mean*
_output_shapes
:*
T0*
out_type0
s
0optimizer/gradients/lr_layer/output_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Ў
>optimizer/gradients/lr_layer/output_grad/BroadcastGradientArgsBroadcastGradientArgs.optimizer/gradients/lr_layer/output_grad/Shape0optimizer/gradients/lr_layer/output_grad/Shape_1*
T0*2
_output_shapes 
:         :         
т
,optimizer/gradients/lr_layer/output_grad/SumSum-optimizer/gradients/loss/Reshape_grad/Reshape>optimizer/gradients/lr_layer/output_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
╒
0optimizer/gradients/lr_layer/output_grad/ReshapeReshape,optimizer/gradients/lr_layer/output_grad/Sum.optimizer/gradients/lr_layer/output_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
ц
.optimizer/gradients/lr_layer/output_grad/Sum_1Sum-optimizer/gradients/loss/Reshape_grad/Reshape@optimizer/gradients/lr_layer/output_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
╬
2optimizer/gradients/lr_layer/output_grad/Reshape_1Reshape.optimizer/gradients/lr_layer/output_grad/Sum_10optimizer/gradients/lr_layer/output_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
й
9optimizer/gradients/lr_layer/output_grad/tuple/group_depsNoOp1^optimizer/gradients/lr_layer/output_grad/Reshape3^optimizer/gradients/lr_layer/output_grad/Reshape_1
о
Aoptimizer/gradients/lr_layer/output_grad/tuple/control_dependencyIdentity0optimizer/gradients/lr_layer/output_grad/Reshape:^optimizer/gradients/lr_layer/output_grad/tuple/group_deps*
T0*C
_class9
75loc:@optimizer/gradients/lr_layer/output_grad/Reshape*#
_output_shapes
:         
з
Coptimizer/gradients/lr_layer/output_grad/tuple/control_dependency_1Identity2optimizer/gradients/lr_layer/output_grad/Reshape_1:^optimizer/gradients/lr_layer/output_grad/tuple/group_deps*
T0*E
_class;
97loc:@optimizer/gradients/lr_layer/output_grad/Reshape_1*
_output_shapes
: 
x
,optimizer/gradients/lr_layer/Mean_grad/ShapeShapelr_layer/Mul*
T0*
out_type0*
_output_shapes
:
о
+optimizer/gradients/lr_layer/Mean_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape
с
*optimizer/gradients/lr_layer/Mean_grad/addAddlr_layer/Mean/reduction_indices+optimizer/gradients/lr_layer/Mean_grad/Size*
T0*?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape*
_output_shapes
: 
ё
*optimizer/gradients/lr_layer/Mean_grad/modFloorMod*optimizer/gradients/lr_layer/Mean_grad/add+optimizer/gradients/lr_layer/Mean_grad/Size*
_output_shapes
: *
T0*?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape
▓
.optimizer/gradients/lr_layer/Mean_grad/Shape_1Const*
valueB *?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape*
dtype0*
_output_shapes
: 
╡
2optimizer/gradients/lr_layer/Mean_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape
╡
2optimizer/gradients/lr_layer/Mean_grad/range/deltaConst*
value	B :*?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape*
dtype0*
_output_shapes
: 
│
,optimizer/gradients/lr_layer/Mean_grad/rangeRange2optimizer/gradients/lr_layer/Mean_grad/range/start+optimizer/gradients/lr_layer/Mean_grad/Size2optimizer/gradients/lr_layer/Mean_grad/range/delta*?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape*
_output_shapes
:*

Tidx0
┤
1optimizer/gradients/lr_layer/Mean_grad/Fill/valueConst*
value	B :*?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape*
dtype0*
_output_shapes
: 
К
+optimizer/gradients/lr_layer/Mean_grad/FillFill.optimizer/gradients/lr_layer/Mean_grad/Shape_11optimizer/gradients/lr_layer/Mean_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape
щ
4optimizer/gradients/lr_layer/Mean_grad/DynamicStitchDynamicStitch,optimizer/gradients/lr_layer/Mean_grad/range*optimizer/gradients/lr_layer/Mean_grad/mod,optimizer/gradients/lr_layer/Mean_grad/Shape+optimizer/gradients/lr_layer/Mean_grad/Fill*
T0*?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape*
N*
_output_shapes
:
│
0optimizer/gradients/lr_layer/Mean_grad/Maximum/yConst*
value	B :*?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape*
dtype0*
_output_shapes
: 
З
.optimizer/gradients/lr_layer/Mean_grad/MaximumMaximum4optimizer/gradients/lr_layer/Mean_grad/DynamicStitch0optimizer/gradients/lr_layer/Mean_grad/Maximum/y*?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape*
_output_shapes
:*
T0
 
/optimizer/gradients/lr_layer/Mean_grad/floordivFloorDiv,optimizer/gradients/lr_layer/Mean_grad/Shape.optimizer/gradients/lr_layer/Mean_grad/Maximum*
T0*?
_class5
31loc:@optimizer/gradients/lr_layer/Mean_grad/Shape*
_output_shapes
:
√
.optimizer/gradients/lr_layer/Mean_grad/ReshapeReshapeAoptimizer/gradients/lr_layer/output_grad/tuple/control_dependency4optimizer/gradients/lr_layer/Mean_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:                  
с
+optimizer/gradients/lr_layer/Mean_grad/TileTile.optimizer/gradients/lr_layer/Mean_grad/Reshape/optimizer/gradients/lr_layer/Mean_grad/floordiv*0
_output_shapes
:                  *

Tmultiples0*
T0
z
.optimizer/gradients/lr_layer/Mean_grad/Shape_2Shapelr_layer/Mul*
T0*
out_type0*
_output_shapes
:
{
.optimizer/gradients/lr_layer/Mean_grad/Shape_3Shapelr_layer/Mean*
T0*
out_type0*
_output_shapes
:
v
,optimizer/gradients/lr_layer/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
╧
+optimizer/gradients/lr_layer/Mean_grad/ProdProd.optimizer/gradients/lr_layer/Mean_grad/Shape_2,optimizer/gradients/lr_layer/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
x
.optimizer/gradients/lr_layer/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
╙
-optimizer/gradients/lr_layer/Mean_grad/Prod_1Prod.optimizer/gradients/lr_layer/Mean_grad/Shape_3.optimizer/gradients/lr_layer/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
t
2optimizer/gradients/lr_layer/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
┐
0optimizer/gradients/lr_layer/Mean_grad/Maximum_1Maximum-optimizer/gradients/lr_layer/Mean_grad/Prod_12optimizer/gradients/lr_layer/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
╜
1optimizer/gradients/lr_layer/Mean_grad/floordiv_1FloorDiv+optimizer/gradients/lr_layer/Mean_grad/Prod0optimizer/gradients/lr_layer/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
ж
+optimizer/gradients/lr_layer/Mean_grad/CastCast1optimizer/gradients/lr_layer/Mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
╞
.optimizer/gradients/lr_layer/Mean_grad/truedivRealDiv+optimizer/gradients/lr_layer/Mean_grad/Tile+optimizer/gradients/lr_layer/Mean_grad/Cast*
T0*(
_output_shapes
:         ║
v
+optimizer/gradients/lr_layer/Mul_grad/ShapeConst*
valueB:║*
dtype0*
_output_shapes
:
|
-optimizer/gradients/lr_layer/Mul_grad/Shape_1ShapeIteratorGetNext*
_output_shapes
:*
T0*
out_type0
э
;optimizer/gradients/lr_layer/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs+optimizer/gradients/lr_layer/Mul_grad/Shape-optimizer/gradients/lr_layer/Mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
д
)optimizer/gradients/lr_layer/Mul_grad/MulMul.optimizer/gradients/lr_layer/Mean_grad/truedivIteratorGetNext*
T0*(
_output_shapes
:         ║
╪
)optimizer/gradients/lr_layer/Mul_grad/SumSum)optimizer/gradients/lr_layer/Mul_grad/Mul;optimizer/gradients/lr_layer/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
─
-optimizer/gradients/lr_layer/Mul_grad/ReshapeReshape)optimizer/gradients/lr_layer/Mul_grad/Sum+optimizer/gradients/lr_layer/Mul_grad/Shape*
T0*
Tshape0*
_output_shapes	
:║
а
+optimizer/gradients/lr_layer/Mul_grad/Mul_1Mul	beta/read.optimizer/gradients/lr_layer/Mean_grad/truediv*
T0*(
_output_shapes
:         ║
▐
+optimizer/gradients/lr_layer/Mul_grad/Sum_1Sum+optimizer/gradients/lr_layer/Mul_grad/Mul_1=optimizer/gradients/lr_layer/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
▀
/optimizer/gradients/lr_layer/Mul_grad/Reshape_1Reshape+optimizer/gradients/lr_layer/Mul_grad/Sum_1-optimizer/gradients/lr_layer/Mul_grad/Shape_1*
T0*
Tshape0*0
_output_shapes
:                  
а
6optimizer/gradients/lr_layer/Mul_grad/tuple/group_depsNoOp.^optimizer/gradients/lr_layer/Mul_grad/Reshape0^optimizer/gradients/lr_layer/Mul_grad/Reshape_1
Ъ
>optimizer/gradients/lr_layer/Mul_grad/tuple/control_dependencyIdentity-optimizer/gradients/lr_layer/Mul_grad/Reshape7^optimizer/gradients/lr_layer/Mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@optimizer/gradients/lr_layer/Mul_grad/Reshape*
_output_shapes	
:║
╡
@optimizer/gradients/lr_layer/Mul_grad/tuple/control_dependency_1Identity/optimizer/gradients/lr_layer/Mul_grad/Reshape_17^optimizer/gradients/lr_layer/Mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@optimizer/gradients/lr_layer/Mul_grad/Reshape_1*0
_output_shapes
:                  
°
optimizer/gradients/AddN_1AddN(optimizer/gradients/loss/L2Loss_grad/mul>optimizer/gradients/lr_layer/Mul_grad/tuple/control_dependency*;
_class1
/-loc:@optimizer/gradients/loss/L2Loss_grad/mul*
N*
_output_shapes	
:║*
T0
Б
#optimizer/beta1_power/initial_valueConst*
valueB
 *fff?*
_class
	loc:@beta*
dtype0*
_output_shapes
: 
Т
optimizer/beta1_power
VariableV2*
_output_shapes
: *
shared_name *
_class
	loc:@beta*
	container *
shape: *
dtype0
┼
optimizer/beta1_power/AssignAssignoptimizer/beta1_power#optimizer/beta1_power/initial_value*
T0*
_class
	loc:@beta*
validate_shape(*
_output_shapes
: *
use_locking(
w
optimizer/beta1_power/readIdentityoptimizer/beta1_power*
_class
	loc:@beta*
_output_shapes
: *
T0
Б
#optimizer/beta2_power/initial_valueConst*
valueB
 *w╛?*
_class
	loc:@beta*
dtype0*
_output_shapes
: 
Т
optimizer/beta2_power
VariableV2*
shared_name *
_class
	loc:@beta*
	container *
shape: *
dtype0*
_output_shapes
: 
┼
optimizer/beta2_power/AssignAssignoptimizer/beta2_power#optimizer/beta2_power/initial_value*
_class
	loc:@beta*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
w
optimizer/beta2_power/readIdentityoptimizer/beta2_power*
_output_shapes
: *
T0*
_class
	loc:@beta
Г
beta/Adam/Initializer/zerosConst*
_output_shapes	
:║*
_class
	loc:@beta*
valueB║*    *
dtype0
Р
	beta/Adam
VariableV2*
dtype0*
_output_shapes	
:║*
shared_name *
_class
	loc:@beta*
	container *
shape:║
к
beta/Adam/AssignAssign	beta/Adambeta/Adam/Initializer/zeros*
use_locking(*
T0*
_class
	loc:@beta*
validate_shape(*
_output_shapes	
:║
d
beta/Adam/readIdentity	beta/Adam*
T0*
_class
	loc:@beta*
_output_shapes	
:║
Е
beta/Adam_1/Initializer/zerosConst*
_output_shapes	
:║*
_class
	loc:@beta*
valueB║*    *
dtype0
Т
beta/Adam_1
VariableV2*
dtype0*
_output_shapes	
:║*
shared_name *
_class
	loc:@beta*
	container *
shape:║
░
beta/Adam_1/AssignAssignbeta/Adam_1beta/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
	loc:@beta*
validate_shape(*
_output_shapes	
:║
h
beta/Adam_1/readIdentitybeta/Adam_1*
T0*
_class
	loc:@beta*
_output_shapes	
:║
Л
$lr_layer/bias/Adam/Initializer/zerosConst*
_output_shapes
: * 
_class
loc:@lr_layer/bias*
valueB
 *    *
dtype0
Ш
lr_layer/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@lr_layer/bias*
	container *
shape: 
╔
lr_layer/bias/Adam/AssignAssignlr_layer/bias/Adam$lr_layer/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@lr_layer/bias
z
lr_layer/bias/Adam/readIdentitylr_layer/bias/Adam*
T0* 
_class
loc:@lr_layer/bias*
_output_shapes
: 
Н
&lr_layer/bias/Adam_1/Initializer/zerosConst* 
_class
loc:@lr_layer/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
Ъ
lr_layer/bias/Adam_1
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@lr_layer/bias
╧
lr_layer/bias/Adam_1/AssignAssignlr_layer/bias/Adam_1&lr_layer/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@lr_layer/bias*
validate_shape(*
_output_shapes
: 
~
lr_layer/bias/Adam_1/readIdentitylr_layer/bias/Adam_1*
T0* 
_class
loc:@lr_layer/bias*
_output_shapes
: 
Y
optimizer/Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
Y
optimizer/Adam/beta2Const*
valueB
 *w╛?*
dtype0*
_output_shapes
: 
[
optimizer/Adam/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
щ
$optimizer/Adam/update_beta/ApplyAdam	ApplyAdambeta	beta/Adambeta/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/ExponentialDecayoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonoptimizer/gradients/AddN_1*
use_locking( *
T0*
_class
	loc:@beta*
use_nesterov( *
_output_shapes	
:║
║
-optimizer/Adam/update_lr_layer/bias/ApplyAdam	ApplyAdamlr_layer/biaslr_layer/bias/Adamlr_layer/bias/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/ExponentialDecayoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonCoptimizer/gradients/lr_layer/output_grad/tuple/control_dependency_1*
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@lr_layer/bias*
use_nesterov( 
▄
optimizer/Adam/mulMuloptimizer/beta1_power/readoptimizer/Adam/beta1%^optimizer/Adam/update_beta/ApplyAdam.^optimizer/Adam/update_lr_layer/bias/ApplyAdam*
T0*
_class
	loc:@beta*
_output_shapes
: 
н
optimizer/Adam/AssignAssignoptimizer/beta1_poweroptimizer/Adam/mul*
_output_shapes
: *
use_locking( *
T0*
_class
	loc:@beta*
validate_shape(
▐
optimizer/Adam/mul_1Muloptimizer/beta2_power/readoptimizer/Adam/beta2%^optimizer/Adam/update_beta/ApplyAdam.^optimizer/Adam/update_lr_layer/bias/ApplyAdam*
_output_shapes
: *
T0*
_class
	loc:@beta
▒
optimizer/Adam/Assign_1Assignoptimizer/beta2_poweroptimizer/Adam/mul_1*
use_locking( *
T0*
_class
	loc:@beta*
validate_shape(*
_output_shapes
: 
ж
optimizer/Adam/updateNoOp^optimizer/Adam/Assign^optimizer/Adam/Assign_1%^optimizer/Adam/update_beta/ApplyAdam.^optimizer/Adam/update_lr_layer/bias/ApplyAdam
О
optimizer/Adam/valueConst^optimizer/Adam/update*
value	B :*
_class
loc:@global_step*
dtype0*
_output_shapes
: 
Т
optimizer/Adam	AssignAddglobal_stepoptimizer/Adam/value*
T0*
_class
loc:@global_step*
_output_shapes
: *
use_locking( 
b
summaries/loss/tagsConst*
valueB Bsummaries/loss*
dtype0*
_output_shapes
: 
_
summaries/lossScalarSummarysummaries/loss/tagsloss/add*
_output_shapes
: *
T0
`
summaries/auc/tagsConst*
valueB Bsummaries/auc*
dtype0*
_output_shapes
: 
f
summaries/aucScalarSummarysummaries/auc/tagspredict/auc/value*
_output_shapes
: *
T0
a
summaries/beta/tagConst*
valueB Bsummaries/beta*
dtype0*
_output_shapes
: 
b
summaries/betaHistogramSummarysummaries/beta/tag	beta/read*
_output_shapes
: *
T0
a
summaries/bias/tagConst*
valueB Bsummaries/bias*
dtype0*
_output_shapes
: 
k
summaries/biasHistogramSummarysummaries/bias/taglr_layer/bias/read*
T0*
_output_shapes
: 
М
summaries/Merge/MergeSummaryMergeSummarysummaries/losssummaries/aucsummaries/betasummaries/bias*
N*
_output_shapes
: 
ц
initNoOp^beta/Adam/Assign^beta/Adam_1/Assign^beta/Assign^global_step/Assign^lr_layer/bias/Adam/Assign^lr_layer/bias/Adam_1/Assign^lr_layer/bias/Assign^optimizer/beta1_power/Assign^optimizer/beta2_power/Assign
а
init_1NoOp#^predict/auc/false_negatives/Assign#^predict/auc/false_positives/Assign"^predict/auc/true_negatives/Assign"^predict/auc/true_positives/Assign

init_all_tablesNoOp
4

group_depsNoOp^init^init_1^init_all_tables
╨
IteratorGetNext_1IteratorGetNextOneShotIterator_1*?
_output_shapes-
+:                  :         *
output_types
2*>
output_shapes-
+:                  :         
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_104f266d4b444f3ebd9539aacc4e1999/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Г
save/SaveV2/tensor_namesConst"/device:CPU:0*з
valueЭBЪ	BbetaB	beta/AdamBbeta/Adam_1Bglobal_stepBlr_layer/biasBlr_layer/bias/AdamBlr_layer/bias/Adam_1Boptimizer/beta1_powerBoptimizer/beta2_power*
dtype0*
_output_shapes
:	
Д
save/SaveV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
Э
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta	beta/Adambeta/Adam_1global_steplr_layer/biaslr_layer/bias/Adamlr_layer/bias/Adam_1optimizer/beta1_poweroptimizer/beta2_power"/device:CPU:0*
dtypes
2	
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
м
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Ж
save/RestoreV2/tensor_namesConst"/device:CPU:0*з
valueЭBЪ	BbetaB	beta/AdamBbeta/Adam_1Bglobal_stepBlr_layer/biasBlr_layer/bias/AdamBlr_layer/bias/Adam_1Boptimizer/beta1_powerBoptimizer/beta2_power*
dtype0*
_output_shapes
:	
З
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
╟
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	
У
save/AssignAssignbetasave/RestoreV2*
use_locking(*
T0*
_class
	loc:@beta*
validate_shape(*
_output_shapes	
:║
Ь
save/Assign_1Assign	beta/Adamsave/RestoreV2:1*
_class
	loc:@beta*
validate_shape(*
_output_shapes	
:║*
use_locking(*
T0
Ю
save/Assign_2Assignbeta/Adam_1save/RestoreV2:2*
use_locking(*
T0*
_class
	loc:@beta*
validate_shape(*
_output_shapes	
:║
а
save/Assign_3Assignglobal_stepsave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
д
save/Assign_4Assignlr_layer/biassave/RestoreV2:4*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@lr_layer/bias*
validate_shape(
й
save/Assign_5Assignlr_layer/bias/Adamsave/RestoreV2:5*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@lr_layer/bias*
validate_shape(
л
save/Assign_6Assignlr_layer/bias/Adam_1save/RestoreV2:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@lr_layer/bias
г
save/Assign_7Assignoptimizer/beta1_powersave/RestoreV2:7*
use_locking(*
T0*
_class
	loc:@beta*
validate_shape(*
_output_shapes
: 
г
save/Assign_8Assignoptimizer/beta2_powersave/RestoreV2:8*
T0*
_class
	loc:@beta*
validate_shape(*
_output_shapes
: *
use_locking(
и
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard╖6
▓
г
Dataset_map_parser_9615
arg0
	decoderaw)
%parsesingleexample_parsesingleexample2DWrapper for passing nested structures to and from tf.data functions.A
ParseSingleExample/ConstConst*
dtype0*
valueB C
ParseSingleExample/Const_1Const*
valueB *
dtype0О
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Const_1:output:0*
Tdense
2*

num_sparse * 

dense_keys
featurelabel*
dense_shapes
: : *
sparse_types
 *
sparse_keys
 q
	DecodeRaw	DecodeRaw4ParseSingleExample/ParseSingleExample:dense_values:0*
little_endian(*
out_type0"]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:1"
	decoderawDecodeRaw:output:0
М
Н
#Dataset_flat_map_read_one_file_9609
arg0
tfrecorddataset2DWrapper for passing nested structures to and from tf.data functions.И9
compression_typeConst*
valueB B *
dtype07
buffer_sizeConst*
dtype0	*
valueB		 RААY
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"+
tfrecorddatasetTFRecordDataset:handle:0
▓
г
Dataset_map_parser_9592
arg0
	decoderaw)
%parsesingleexample_parsesingleexample2DWrapper for passing nested structures to and from tf.data functions.A
ParseSingleExample/ConstConst*
valueB *
dtype0C
ParseSingleExample/Const_1Const*
dtype0*
valueB О
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Const_1:output:0*
Tdense
2*

num_sparse * 

dense_keys
featurelabel*
dense_shapes
: : *
sparse_types
 *
sparse_keys
 q
	DecodeRaw	DecodeRaw4ParseSingleExample/ParseSingleExample:dense_values:0*
little_endian(*
out_type0"
	decoderawDecodeRaw:output:0"]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:1
М
Н
#Dataset_flat_map_read_one_file_9586
arg0
tfrecorddataset2DWrapper for passing nested structures to and from tf.data functions.И9
compression_typeConst*
valueB B *
dtype07
buffer_sizeConst*
valueB		 RАА*
dtype0	Y
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"+
tfrecorddatasetTFRecordDataset:handle:0
А
Q
_make_dataset_BtvnBLVn3mY
modeldataset2Factory function for a dataset.И{
optimizationsConst*V
valueMBKBmap_and_batch_fusionBnoop_eliminationBshuffle_and_repeat_fusion*
dtype0X
TensorSliceDataset/Const_1Const*&
valueB B./data/test.tfrecords*
dtype0`
)TensorSliceDataset/flat_filenames_1/shapeConst*
valueB:
         *
dtype0Ю
#TensorSliceDataset/flat_filenames_1Reshape#TensorSliceDataset/Const_1:output:02TensorSliceDataset/flat_filenames_1/shape:output:0*
T0*
Tshape0Е
TensorSliceDatasetTensorSliceDataset,TensorSliceDataset/flat_filenames_1:output:0*
output_shapes
: *
Toutput_types
2л
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0*

Targuments
 *
output_shapes
: *,
f'R%
#Dataset_flat_map_read_one_file_9609*
output_types
2▀

MapDataset
MapDatasetFlatMapDataset:handle:0*

Targuments
 *
preserve_cardinality( *$
output_shapes
:         : * 
fR
Dataset_map_parser_9615*
output_types
2*
use_inter_op_parallelism(H
RepeatDataset/count_1Const*
valueB	 R
         *
dtype0	С
RepeatDatasetRepeatDatasetMapDataset:handle:0RepeatDataset/count_1:output:0*$
output_shapes
:         : *
output_types
2G
BatchDatasetV2/batch_size_1Const*
dtype0	*
valueB		 RХИI
BatchDatasetV2/drop_remainder_1Const*
value	B
 Z *
dtype0
р
BatchDatasetV2BatchDatasetV2RepeatDataset:handle:0$BatchDatasetV2/batch_size_1:output:0(BatchDatasetV2/drop_remainder_1:output:0*>
output_shapes-
+:                  :         *
output_types
2л
OptimizeDatasetOptimizeDatasetBatchDatasetV2:handle:0optimizations:output:0*>
output_shapes-
+:                  :         *
output_types
2О
ModelDatasetModelDatasetOptimizeDataset:handle:0*>
output_shapes-
+:                  :         *
output_types
2"%
modeldatasetModelDataset:handle:0
й
Q
_make_dataset_13dOIAx89Yw
modeldataset2Factory function for a dataset.И{
optimizationsConst*
dtype0*V
valueMBKBmap_and_batch_fusionBnoop_eliminationBshuffle_and_repeat_fusionW
TensorSliceDataset/ConstConst*
dtype0*'
valueB B./data/train.tfrecords^
'TensorSliceDataset/flat_filenames/shapeConst*
valueB:
         *
dtype0Ш
!TensorSliceDataset/flat_filenamesReshape!TensorSliceDataset/Const:output:00TensorSliceDataset/flat_filenames/shape:output:0*
T0*
Tshape0Г
TensorSliceDatasetTensorSliceDataset*TensorSliceDataset/flat_filenames:output:0*
output_shapes
: *
Toutput_types
2л
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0*

Targuments
 *
output_shapes
: *,
f'R%
#Dataset_flat_map_read_one_file_9586*
output_types
2▀

MapDataset
MapDatasetFlatMapDataset:handle:0*$
output_shapes
:         : * 
fR
Dataset_map_parser_9592*
output_types
2*
use_inter_op_parallelism(*

Targuments
 *
preserve_cardinality( D
ShuffleDataset/buffer_sizeConst*
value	B	 Rd*
dtype0	=
ShuffleDataset/seedConst*
dtype0	*
value	B	 R >
ShuffleDataset/seed2Const*
value	B	 R *
dtype0	ї
ShuffleDatasetShuffleDatasetMapDataset:handle:0#ShuffleDataset/buffer_size:output:0ShuffleDataset/seed:output:0ShuffleDataset/seed2:output:0*$
output_shapes
:         : *
reshuffle_each_iteration(*
output_types
2F
RepeatDataset/countConst*
dtype0	*
valueB	 R
         У
RepeatDatasetRepeatDatasetShuffleDataset:handle:0RepeatDataset/count:output:0*
output_types
2*$
output_shapes
:         : D
BatchDatasetV2/batch_sizeConst*
value
B	 RА*
dtype0	G
BatchDatasetV2/drop_remainderConst*
value	B
 Z *
dtype0
▄
BatchDatasetV2BatchDatasetV2RepeatDataset:handle:0"BatchDatasetV2/batch_size:output:0&BatchDatasetV2/drop_remainder:output:0*>
output_shapes-
+:                  :         *
output_types
2л
OptimizeDatasetOptimizeDatasetBatchDatasetV2:handle:0optimizations:output:0*>
output_shapes-
+:                  :         *
output_types
2О
ModelDatasetModelDatasetOptimizeDataset:handle:0*
output_types
2*>
output_shapes-
+:                  :         "%
modeldatasetModelDataset:handle:0"<
save/Const:0save/Identity:0save/restore_all (5 @F8"Р
metric_variables|
z
predict/auc/true_positives:0
predict/auc/false_negatives:0
predict/auc/true_negatives:0
predict/auc/false_positives:0"╣
cond_contextие
М
=predict/auc/assert_greater_equal/Assert/AssertGuard/cond_text=predict/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0>predict/auc/assert_greater_equal/Assert/AssertGuard/switch_t:0 *╔
Hpredict/auc/assert_greater_equal/Assert/AssertGuard/control_dependency:0
=predict/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
>predict/auc/assert_greater_equal/Assert/AssertGuard/switch_t:0~
=predict/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0=predict/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
з

?predict/auc/assert_greater_equal/Assert/AssertGuard/cond_text_1=predict/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0>predict/auc/assert_greater_equal/Assert/AssertGuard/switch_f:0*ф
predict/auc/Cast/x:0
&predict/auc/assert_greater_equal/All:0
Cpredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
Epredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
Epredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
Cpredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0:0
Cpredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1:0
Cpredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_3:0
Jpredict/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1:0
=predict/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
>predict/auc/assert_greater_equal/Assert/AssertGuard/switch_f:0
predict/logit:0X
predict/logit:0Epredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0~
=predict/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0=predict/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0m
&predict/auc/assert_greater_equal/All:0Cpredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0]
predict/auc/Cast/x:0Epredict/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
Ї
:predict/auc/assert_less_equal/Assert/AssertGuard/cond_text:predict/auc/assert_less_equal/Assert/AssertGuard/pred_id:0;predict/auc/assert_less_equal/Assert/AssertGuard/switch_t:0 *║
Epredict/auc/assert_less_equal/Assert/AssertGuard/control_dependency:0
:predict/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
;predict/auc/assert_less_equal/Assert/AssertGuard/switch_t:0x
:predict/auc/assert_less_equal/Assert/AssertGuard/pred_id:0:predict/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
Є	
<predict/auc/assert_less_equal/Assert/AssertGuard/cond_text_1:predict/auc/assert_less_equal/Assert/AssertGuard/pred_id:0;predict/auc/assert_less_equal/Assert/AssertGuard/switch_f:0*╕
predict/auc/Cast_1/x:0
#predict/auc/assert_less_equal/All:0
@predict/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Bpredict/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Bpredict/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
@predict/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
@predict/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
@predict/auc/assert_less_equal/Assert/AssertGuard/Assert/data_3:0
Gpredict/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
:predict/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
;predict/auc/assert_less_equal/Assert/AssertGuard/switch_f:0
predict/logit:0x
:predict/auc/assert_less_equal/Assert/AssertGuard/pred_id:0:predict/auc/assert_less_equal/Assert/AssertGuard/pred_id:0U
predict/logit:0Bpredict/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0\
predict/auc/Cast_1/x:0Bpredict/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0g
#predict/auc/assert_less_equal/All:0@predict/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0"
train_op

optimizer/Adam"U
	iteratorsH
F
IteratorFromStringHandleV2:0
OneShotIterator:0
OneShotIterator_1:0"V
	summariesI
G
summaries/loss:0
summaries/auc:0
summaries/beta:0
summaries/bias:0"╣
trainable_variablesбЮ
I
beta:0beta/Assignbeta/read:02#beta/Initializer/truncated_normal:08
Q
lr_layer/bias:0lr_layer/bias/Assignlr_layer/bias/read:02lr_layer/Const:08"√
local_variablesчф
Ф
predict/auc/true_positives:0!predict/auc/true_positives/Assign!predict/auc/true_positives/read:02.predict/auc/true_positives/Initializer/zeros:0
Ш
predict/auc/false_negatives:0"predict/auc/false_negatives/Assign"predict/auc/false_negatives/read:02/predict/auc/false_negatives/Initializer/zeros:0
Ф
predict/auc/true_negatives:0!predict/auc/true_negatives/Assign!predict/auc/true_negatives/read:02.predict/auc/true_negatives/Initializer/zeros:0
Ш
predict/auc/false_positives:0"predict/auc/false_positives/Assign"predict/auc/false_positives/read:02/predict/auc/false_positives/Initializer/zeros:0"б
	variablesУР
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
I
beta:0beta/Assignbeta/read:02#beta/Initializer/truncated_normal:08
Q
lr_layer/bias:0lr_layer/bias/Assignlr_layer/bias/read:02lr_layer/Const:08
|
optimizer/beta1_power:0optimizer/beta1_power/Assignoptimizer/beta1_power/read:02%optimizer/beta1_power/initial_value:0
|
optimizer/beta2_power:0optimizer/beta2_power/Assignoptimizer/beta2_power/read:02%optimizer/beta2_power/initial_value:0
P
beta/Adam:0beta/Adam/Assignbeta/Adam/read:02beta/Adam/Initializer/zeros:0
X
beta/Adam_1:0beta/Adam_1/Assignbeta/Adam_1/read:02beta/Adam_1/Initializer/zeros:0
t
lr_layer/bias/Adam:0lr_layer/bias/Adam/Assignlr_layer/bias/Adam/read:02&lr_layer/bias/Adam/Initializer/zeros:0
|
lr_layer/bias/Adam_1:0lr_layer/bias/Adam_1/Assignlr_layer/bias/Adam_1/read:02(lr_layer/bias/Adam_1/Initializer/zeros:0*Щ
my_signatureИ
<
input_x1
IteratorGetNext:0                  ,
output"
predict/logit:0         tensorflow/serving/predict