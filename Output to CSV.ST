
(* Get Date Time Stamp Now *)
s_Local_DateTimeNow	:= Replace(s_DateTimeNow,'',3,1);				// Trim awat DT# from Date time Stamp String	 


(*Compute Message*)
b_OneShot[52](CLK:= gb_Trig_WeldData_Write );
IF b_OneShot[52].Q THEN
	
	mi	:= 1;			// Set Start Message Pointer to 1
	_s_WeldUnload_DMMC_Code:=_WeldDataArray[gd_HolderRef].dmcc;		// Copy The DMCC unload at Weld to Robot Arm

			(* Part  Data Message  *)
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(s_Local_DateTimeNow	 ,',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(gd_HolderRef));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].ttpos));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],(_WeldDataArray[gd_HolderRef].dmcc));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[4]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[5]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[6]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[7]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[8]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[9]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[10]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[11]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[12]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[13]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[14]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[15]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[16]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[17]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[18]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[19]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[20]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[21]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[22]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[23]));
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],',');
			_s_PartData_Weld_CSVData_Message[mi]:=Concat(_s_PartData_Weld_CSVData_Message[mi],DINT_TO_STRING(_WeldDataArray[gd_HolderRef].DataValue[24]));
		
			gd_UL_Hold_Result	:= _WeldDataArray[gd_HolderRef].DataValue[24];		// Copy Result Code to Galobal Tag
			gd_Prev_HoldRef		:= gd_HolderRef; 		// Set The Hold to Previous (For Record And Next Logging)
			gb_WriteCSV_WeldData:=TRUE;					// CSV Write weld Data
			gb_Trig_WeldData_Write:=FALSE;				// Clear Request Compute and Write Weld Data Bit
		
END_IF	
