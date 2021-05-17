
(* Decode String from TCP/IP Client*)

	// Defined Identification Keyword
	s_IdentString[1]			:= 'hold=';
	s_IdentString[2]			:= 'ttpos=';
	s_IdentString[3]			:= 'dmcc=';
	s_IdentString[4]			:= 'mvs1rl=';
	s_IdentString[5]			:= 'mvs1rr=';
	s_IdentString[6]			:= 'mvs1tl=';
	s_IdentString[7]			:= 'mvs1tr=';
	s_IdentString[8]			:= 'mvs3l=';
	s_IdentString[9]			:='mvs3r=';
	s_IdentString[10]			:='mvs71sl=';
	s_IdentString[11]			:='mvs71sr=';
	s_IdentString[12]			:='mvs71fl=';
	s_IdentString[13]			:='mvs71fr=';
	s_IdentString[14]			:='mvs3eclul=';
	s_IdentString[15]			:='mvs3ecldl=';
	s_IdentString[16]			:='mvs3eclur=';
	s_IdentString[17]			:='mvs3ecldr=';
	s_IdentString[18]			:='mvs3cul=';
	s_IdentString[19]			:='mvs3cur=';
	s_IdentString[20]			:='mvs3gul=';
	s_IdentString[21]			:='mvs3gur=';
	s_IdentString[22]			:='mvs6ptl=';
	s_IdentString[23]			:='mvs6ptr=';
	s_IdentString[24]			:='out=';
	s_IdentString[25]			:='error=';
		

															// sFromClient_Recd_at_Server_SvrID_2; 	// get String Data
	
	(*Find Identication Start String Index Number*)
	
FOR ii:=1 TO 30 BY 1 DO
	
	IF ii=1 THEN
			s_ReceivedString			:=sFromClient_Recd_at_Server_SvrID_2; 	// get String Data
			s_TrimStringData			:=s_ReceivedString;
	END_IF
	
	d_NextTrim_Index:=0;
	d_EndTrim_Index:=0;
	
	d_StartTrim_Index		:= FIND(s_TrimStringData,s_IdentString[ii]);
	IF d_StartTrim_Index>0 THEN
		
	
		s_TrimStringData		:= Delete (s_TrimStringData,(LEN(s_IdentString[ii])+(d_StartTrim_Index-1)),1);
		d_NextTrim_Index		:= FIND(s_TrimStringData,s_EndStringIdent1);
		 d_EndTrim_Index		:= FIND(s_TrimStringData,s_EndStringIdent2);
		 
		 d_HolderRef			:= STRING_TO_DINT (s_DecodeString[1]);
		 gd_HolderRef			:=d_HolderRef;
		
		
		 IF d_NextTrim_Index>0 THEN
			 	s_DecodeString[ii]			:= MID(s_TrimStringData,d_NextTrim_Index-1,1);
				
				(* Get TTPOS to Weld Array Of the Holder*)
				IF ii=2 THEN
				_WeldDataArray[d_HolderRef].ttpos	:=STRING_TO_DINT(s_DecodeString[ii]);
				END_IF
				
				(* Get DMC String to Weld Array Of the Holder*)
				IF ii=3 THEN
				_WeldDataArray[d_HolderRef].DMCC	:=(s_DecodeString[ii]);
				END_IF
				
				(* Get Other String Data to Weld Array Of the Holder*)
				IF ii>=4 AND ii<=24 THEN
				_WeldDataArray[d_HolderRef].DataValue[ii]	:=STRING_TO_DINT(s_DecodeString[ii]);
				END_IF
				
				IF ii=25 THEN
				_WeldDataArray[d_HolderRef].error	:=s_DecodeString[ii];
				END_IF
				
		 END_IF
		 
		 IF d_NextTrim_Index=0 THEN
			 	s_DecodeString[ii]		:= MID(s_TrimStringData,d_EndTrim_Index-1,1);
				
				IF ii>=4 AND ii<=24 THEN
				_WeldDataArray[d_HolderRef].DataValue[ii]	:=STRING_TO_DINT(s_DecodeString[ii]);
				END_IF
				
				IF ii=25 THEN
				_WeldDataArray[d_HolderRef].error	:=s_DecodeString[ii];
				END_IF
				
		 END_IF
		 
	ELSE
 		IF (d_NextTrim_Index=0 AND d_EndTrim_Index=0) OR d_StartTrim_Index=0  THEN
			  	s_DecodeString[ii]		:= '';
		 END_IF	 
		
	  
	  END_IF 
	  
	 gb_Trig_WeldData_Write:= (_WeldDataArray[d_HolderRef].ttpos =9);
	 
END_FOR