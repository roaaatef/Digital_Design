package shared_pkg;
	 /*......................parameters....................*/
 parameter INPUT_PRIORITY="A";
	parameter FULL_ADDER="ON";
	parameter MAXPOS=3;
	parameter MAXNEG=-4;
	typedef enum  {OR,XOR,ADD,MULT,SHIFT,ROTATE,INVALID_6,INVALID_7} OP_CODE;
	typedef enum {RIGHT, LEFT} direction_e;
endpackage
