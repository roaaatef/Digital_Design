package ALSU_P;
	parameter INPUT_PRIORITY="A";
	parameter FULL_ADDER="ON";
	parameter MAXPOS=3;
	parameter MAXNEG=-4;
	typedef enum  {OR,XOR,ADD,MULT,SHIFT,ROTATE,INVALID_6,INVALID_7} OP_CODE;
	class ALSU_CLASS;
		rand logic rst;
		rand logic  signed [2:0] A,B;
		rand OP_CODE op_code;
		rand logic cin,serial_in,direction;
        rand logic red_op_a,red_op_b;
        rand logic bypass_a,bypass_b;
         rand OP_CODE array [6];
/*.........constraint to force rst to be low most of the time...*/
constraint RST {
	rst dist{0:=99,1:=1};
}
/*.........op code constraint.........*/
constraint OP {
	op_code dist{OR:=30,XOR:=10,[ADD:ROTATE]:/45,[INVALID_6:INVALID_7]:/5};
}
/*............constraint A,B.......*/
constraint A_B {
/*.................forc A,B to be MAX,MIN,ZERO 90% of the time.....*/
if (op_code==ADD||op_code==MULT)
	{
	A dist{ MAXNEG:=20,MAXPOS:=40,0:=30, [-3:-1]:/5,[1:2]:/5};
	B dist{ MAXNEG:=20,MAXPOS:=40,0:=30, [-3:-1]:/5,[1:2]:/5};	
}
/*..........constraints on A when OR,XOR opcode and red_op_a=1.....*/
if((op_code==OR||op_code==XOR)&red_op_a)
	{
A dist {3'b001:=20,3'b010:=25,3'b100:=40,0:=5,3:=5,[-4:-1]:/5};
B==0;	
}
/*..........constraints on B when OR,XOR opcode and red_op_b=1.....*/
if((op_code==OR||op_code==XOR)&red_op_b)
	{
B dist {  3'b001:=20,3'b010:=25,3'b100:=40, 0:=5,3:=5,[-4:-1]:/5};
A==0;	
}
}

/*...............red_op_A,red_op_B constraints......*/
constraint red_op_A {
red_op_a dist {0:=5,1:=95};	
}
constraint red_op_B {
red_op_b dist {0:=5,1:=95};	
}
/*..................bypass A,bypass B must be disabled most of the time.......*/
constraint bypass_A {
bypass_a dist {0:=95,1:=5};		
}
constraint bypass_B {
bypass_b dist {0:=95,1:=5};		
}
////////////////////////unique constraint for the array////////////////////////
constraint X {
	foreach (array[i]){
		array[i]!={INVALID_6,INVALID_7};
		if(i==0)
		array[i]==OR;
           else if (i > 0) {
            (array[i-1] == OR) -> (array[i] == XOR);
            (array[i-1] == XOR) -> (array[i] == ADD);
            (array[i-1] == ADD) -> (array[i] == MULT);
            (array[i-1] == MULT) -> (array[i] == SHIFT);
            (array[i-1] == SHIFT) -> (array[i] == ROTATE);
        } 

		}
}
//////////////////////////////alsu covergroup/////////////////////////////////////////
covergroup alsu_cg ;
	/*................coverpoint for a maxpos,maxneg,0 values..................*/
	A_cp1: coverpoint A 
	{
	bins A_data_0 = {0};
	bins A_data_max = {MAXPOS};
	bins A_data_min = {MAXNEG};
	bins A_data_default=default;
	}
	/*................coverpoint for when takes walkingone..................*/
	A_cp2: coverpoint A iff(red_op_a)
	{
bins walkingones []={3'b001,3'b010,3'b100};
	}
	/*................coverpoint for b maxpos,maxneg,0 values..................*/
	B_cp1: coverpoint B
	{
	bins B_data_0 = {0};
	bins B_data_max = {MAXPOS};
	bins B_data_min = {MAXNEG};
	bins B_data_default=default;
	}
		/*................coverpoint for when takes walkingone..................*/
	B_cp2: coverpoint B iff(!red_op_a&red_op_b)
	{
    bins walkingones []={3'b001,3'b010,3'b100};
	}
	////////////////////////***opcode coverpoint***/////////////////////
	ALU_cp:coverpoint op_code 
	{
	bins Bins_shift[] = {SHIFT,ROTATE};
	bins Bins_arith [] = {ADD,MULT};
	bins Bins_bitwise [] = {OR,XOR};
	bins Bins_invalid ={INVALID_6,INVALID_7};
	bins Bins_trans = (OR=>XOR=>ADD=>MULT=>SHIFT=>ROTATE);
	}
	c_cp:coverpoint cin
	{
	bins one = {1};
	bins zero = {0};
	}

	direction_cp:coverpoint direction
	{
	bins one = {1};
	bins zero = {0};
	}
		serial_cp:coverpoint serial_in
	{
	bins one = {1};
	bins zero = {0};
	}
		reda_cp:coverpoint red_op_a
	{
	bins one = { 1};
	bins zero = {0};
	}
		redb_cp:coverpoint red_op_b
	{
	bins one = {1};
	bins zero = {0};
	}
 c1_cs : cross B_cp1,ALU_cp 
{
bins add_mult_b = binsof(ALU_cp.Bins_arith) && (binsof(B_cp1.B_data_max)||binsof(B_cp1.B_data_0)||binsof(B_cp1.B_data_min));
option.cross_auto_bin_max=0;
}
 c2_cs : cross A_cp1,ALU_cp 
{
bins add_mult_a = binsof(ALU_cp.Bins_arith) && (binsof(A_cp1.A_data_max)||binsof(A_cp1.A_data_0)||binsof(A_cp1.A_data_min));
option.cross_auto_bin_max=0;
}
c3_cs : cross ALU_cp,c_cp
{
	bins add = binsof(ALU_cp.Bins_arith) intersect {ADD} && (binsof(c_cp.zero)||binsof(c_cp.one));
	option.cross_auto_bin_max=0;
}
c4_cs : cross  ALU_cp,direction_cp
{
	bins sh = binsof (ALU_cp.Bins_shift) intersect {SHIFT} && (binsof (direction_cp.zero)||binsof (direction_cp.one));
	bins r = binsof (ALU_cp.Bins_shift) intersect {ROTATE} && (binsof (direction_cp.zero)||binsof (direction_cp.one));
	option.cross_auto_bin_max=0;
}
c5_cs : cross  ALU_cp,serial_cp
{
	bins sh = binsof (ALU_cp.Bins_shift) intersect {SHIFT} && (binsof (serial_cp.zero)||binsof (serial_cp.one));
	option.cross_auto_bin_max=0;
}
c6_cs : cross  ALU_cp,reda_cp,A_cp2,B_cp1
{
	bins reda = binsof (ALU_cp.Bins_bitwise) && (binsof (reda_cp.one)) 
	&&(binsof(A_cp2.walkingones))&&(binsof(B_cp1.B_data_0));
	option.cross_auto_bin_max=0;
}
c7_cs : cross  ALU_cp,redb_cp,B_cp2,A_cp1
{
	bins redb = binsof (ALU_cp.Bins_bitwise) && (binsof (redb_cp.one))
	&&(binsof(B_cp2.walkingones))&&(binsof(A_cp1.A_data_0));
	option.cross_auto_bin_max=0;
}
c8_cs : cross ALU_cp,redb_cp,reda_cp
{
bins a1 = binsof(ALU_cp.Bins_shift) &&(binsof(reda_cp.one))&&(binsof(redb_cp.zero));
bins a2 = binsof(ALU_cp.Bins_arith) &&(binsof(reda_cp.one))&&(binsof(redb_cp.zero));
bins b1 = binsof(ALU_cp.Bins_shift) &&(binsof(redb_cp.one))&&(binsof(reda_cp.zero));
bins b2 = binsof(ALU_cp.Bins_arith) &&(binsof(redb_cp.one))&&(binsof(reda_cp.zero));
bins ab1 = binsof(ALU_cp.Bins_shift) &&(binsof(redb_cp.one))&&(binsof(reda_cp.one));
bins ab2 = binsof(ALU_cp.Bins_arith) &&(binsof(redb_cp.one))&&(binsof(reda_cp.one));
option.cross_auto_bin_max=0;	
}
endgroup
function new();
 	alsu_cg = new();
 endfunction 
endclass 
endpackage 

