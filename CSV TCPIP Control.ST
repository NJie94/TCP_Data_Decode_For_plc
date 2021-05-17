
(* Get Date Time Stamp Now *)
s_Local_DateTimeNow	:= Replace(s_DateTimeNow,'',3,1);				// Trim awat DT# from Date time Stamp String	 

gb_Trig_TCPIP_Wr_Data_Write:= bSendingToClient_SvrID_1;

(*Compute Message*)
b_OneShot[45](CLK:= gb_Trig_TCPIP_Rec_Data_Write );
IF b_OneShot[45].Q THEN
	
	m1i	:= 1;			// Set Start Message Pointer to 1
	

			(* Part  Data Message  *)
			_s_TCPIP_Rec_CSVData_Message[m1i]:=Concat(s_Local_DateTimeNow	 ,',');
			_s_TCPIP_Rec_CSVData_Message[m1i]:=Concat(_s_TCPIP_Rec_CSVData_Message[mi],sFromClient_Recd_at_Server_SvrID_2);
			
		
			gb_WriteCSV_TCPIPLogRecData:=TRUE;					// CSV Write TCPIP Send Data
			gb_Trig_TCPIP_Rec_Data_Write:=FALSE;				// Clear Request Compute and TCPIP Send Data Bit
		
END_IF	



(*Compute Message*)
b_OneShot[46](CLK:= gb_Trig_TCPIP_Wr_Data_Write );
IF b_OneShot[46].Q THEN
	
	m1i	:= 1;			// Set Start Message Pointer to 1
	

			(* Part  Data Message  *)
			_s_TCPIP_Wr_CSVData_Message[m1i]:=Concat(s_Local_DateTimeNow	 ,',');
			_s_TCPIP_Wr_CSVData_Message[m1i]:=Concat(_s_TCPIP_Wr_CSVData_Message[mi],strToClient_from_Server_SvrID_1);
			
		
			gb_WriteCSV_TCPIPLogWrData:=TRUE;					// CSV Write TCPIP Send Data
			gb_Trig_TCPIP_Wr_Data_Write:=FALSE;				// Clear Request Compute and TCPIP Send Data Bit
		
END_IF	
