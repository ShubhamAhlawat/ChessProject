
>
prediction/dimensionConst*
dtype0*
value	B :
1
KeepProbPlaceholder*
dtype0*
shape: 
@
InputPlaceholder*
dtype0*
shape:??????????
8
Reshape/shapeConst*
dtype0*
value
B
?
VariableConst*
dtype0*
valueB 
5

Variable_1Const*
dtype0*
value
B 
A

Variable_2Const*
dtype0*
valueB @
5

Variable_3Const*
dtype0*
value
B@
6
Pool3/shapeConst*
dtype0*
value
B
;

Variable_4Const*
dtype0*
valueB
? ?
6

Variable_5Const*
dtype0*
valueB	?
:

Variable_6Const*
dtype0*
valueB	?
5

Variable_7Const*
dtype0*
value
B
?
ReshapeReshapeInputReshape/shape*
T0*
Tshape0
?
Conv2DConv2DReshapeVariable*
T0*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*
strides

'
addAddConv2D
Variable_1*
T0

Conv1Reluadd*
T0
r
Pool1MaxPoolConv1*
paddingSAME*
strides
*
data_formatNHWC*
T0*
ksize

?
Conv2D_1Conv2DPool1
Variable_2*
paddingSAME*
use_cudnn_on_gpu(*
data_formatNHWC*
	dilations
*
strides
*
T0
+
add_1AddConv2D_1
Variable_3*
T0

Conv2Reluadd_1*
T0
r
Pool2MaxPoolConv2*
paddingSAME*
strides
*
data_formatNHWC*
T0*
ksize

;
Pool3ReshapePool2Pool3/shape*
T0*
Tshape0
R
MatMulMatMulPool3
Variable_4*
T0*
transpose_b( *
transpose_a( 
)
add_2AddMatMul
Variable_5*
T0
 
MatMult3Reluadd_2*
T0
1
	Drop4/divRealDivMatMult3KeepProb*
T0
7
Drop4/ShapeShapeMatMult3*
T0*
out_type0
o
"Drop4/random_uniform/RandomUniformRandomUniformDrop4/Shape*
T0*

seed *
dtype0*
seed2 
G
	Drop4/addAddKeepProb"Drop4/random_uniform/RandomUniform*
T0
(
Drop4/FloorFloor	Drop4/add*
T0
1
	Drop4/mulMul	Drop4/divDrop4/Floor*
T0
X
MatMul_1MatMul	Drop4/mul
Variable_6*
T0*
transpose_b( *
transpose_a( 
+
add_3AddMatMul_1
Variable_7*
T0
(
probabilitiesSoftmaxadd_3*
T0
a

predictionArgMaxprobabilitiesprediction/dimension*
T0*

Tidx0*
output_type0	 " 