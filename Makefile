VERILOG = iverilog
TARGET = voter.vcd

$(TARGET) : voter_case.vvp
	vvp voter_case.vvp

voter_case.vvp: voter_case_tb.v voter_case.v
	$(VERILOG) -o voter_case.vvp voter_case_tb.v voter_case.v

clean:
	del $(TARGET)