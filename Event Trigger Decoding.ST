 DataConfirm_Clk(CLK:=isNewDataConfRecd_SvrID_2);
 
IF   DataConfirm_Clk.Q AND (LEN(sFromClient_Recd_at_Server_SvrID_2)>5) THEN
	
		gb_Trig_TCPIP_Rec_Data_Write		:=TRUE;				// Request TCPIP Log Received Data CSV 
		R01_DecodeResult();										// Request Decode Received Data CSV 
END_IF
