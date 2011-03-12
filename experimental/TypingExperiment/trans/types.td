module types

signatures

	include/PL
 	normal/signature
 	
types

	INT 		"int"
	STRING		"string"
		
rules // syntactic types

	Int()		: INT
	String()	: STRING
	
rules // declarations
	
	t_syn: t_sem
	=====================
	Decl(x, t_syn): t_sem
	

rules // expressions

	IntConst(_)	  : INT
	StringConst(_): STRING
	
	@self: t 
	=========
	Var(x): t 
	
	  op: t1 * t2 -> t	"Unknown operator" 
	& e1: t1
	& e2: t2 
	===================== 
	BinExp(op, e1, e2): t
		
rules // operators

	PLUS()  : INT * INT -> INT
	MINUS() : INT * INT -> INT
	TIMES() : INT * INT -> INT
	DIV()   : INT * INT -> INT
	MOD()   : INT * INT -> INT
	CONCAT(): STRING * STRING -> STRING
	
rules // statements
	
	  v: t
	& e: t
	============
	Assign(v, e)	
	
	e: INT
	===============
	IfElse(e, _, _)

	e: INT
	===========
	While(e, _)
