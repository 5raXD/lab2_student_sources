ID1 := 213310485
ID2 := 214032682
ZIP_NAME := FPGA2_$(ID1)_$(ID2).zip
PDF := $(wildcard fpga*.pdf FPGA*.pdf)
V_FILES := $(wildcard *.v)

.PHONY: zip clean

zip:
	rm -f $(ZIP_NAME)
	zip $(ZIP_NAME) $(V_FILES) $(PDF)

clean:
	rm -f $(ZIP_NAME)
