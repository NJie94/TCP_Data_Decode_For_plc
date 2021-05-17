PROGRAM Base_TcpIP_DecodenData
VAR
	
(* Decode Result Work Variable*)
s_IdentString			: ARRAY[1..30] OF T_MaxString;
 s_EndStringIdent1		: STRING[2] :='&';
 s_EndStringIdent2		: STRING[2] :='$$';	

 s_DecodeString			: ARRAY[1..30] OF  T_MaxString;	
 
 s_TrimStringData		:  T_MaxString;
 s_ReceivedString		:  T_MaxString;
 
 d_StartTrim_Index		: INT;
 d_NextTrim_Index		: INT;
 d_EndTrim_Index		: INT;
 
 d_HolderRef			: DINT;				// Current Holder Reference Number
 
 DataConfirm_Clk		:R_Trig;			
 
 (* For Looping Variable*)
 
 ii			: INT :=1;
 xx			: INT :=1;

(* End Decode Result Variable*)






(* CSV Message & OPC Data Working Declaration*)
	
	mi									:INT :=1;				// Message Array Index Pointer
	m1i									:INT :=1;				// Message Array Index Pointer
	m2i									:INT :=1;				// Message Array Index Pointer
	m3i									:INT :=1;				// Message Array Index Pointer
	m4i									:INT :=1;				// Message Array Index Pointer
	
	s_Local_DateTimeNow					: String[22];
	b_OneShot 							:ARRAY [0..63]OF R_TRIG;	// 1 set of one shot Pulse bit for this module
	CD									:BOOL;						// Condition	

(* End CSV Message & OPC Data Working Declaration*)
END_VAR
