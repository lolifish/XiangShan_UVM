#Makefile for WayLookup

export SIMULATOR = verilator
export TRACE := fst
export PROJECT := WayLookup
export TARGET := UT_WayLookup
export VERBOSE := OFF
export EXAMPLE := OFF
export TLANG := python
export SIMULATOR_FLAGS := 
export CFLAGS := 
export COVERAGE := ON
export CHECKPOINTS := OFF
export VPI := OFF
export RW_TYPE := DPI
export NPROC := `nproc`

all: release 

compile:
	mkdir -p build
	cp pli.tab build/pli.tab
	@echo -n "[TIME LOG] verilator generate START: "  && date +%s.%3N
	/usr/bin/time cmake . -Bbuild -DSIMULATOR=$(SIMULATOR) -DTRACE=$(TRACE) -DPROJECT=$(PROJECT) -DCMAKE_BUILD_PARALLEL=$(NPROC) -DRW_TYPE=$(RW_TYPE)
	@echo -n "[TIME LOG] verilator generate END: " && date +%s.%3N
	/usr/bin/time cmake --build build --config release --parallel $(NPROC)
	@echo -n "[TIME LOG] verilator build END: " && date +%s.%3N

ifeq ($(RW_TYPE), MEM_DIRECT)
ifeq ($(SIMULATOR), verilator)
# file exsit check with Makefile
ifeq ($(wildcard build/DPIWayLookup/VWayLookup___024root.h),)
	@echo -n "[TIME LOG] mem_direct export START: " && date +%s.%3N
	@rm -rf mem_direct
	@/usr/local/bin/picker export build/DPIWayLookup/VWayLookup___024root.h \
		--source_dir /usr/local/share/picker/template/mem_direct --target_dir ./mem_direct \
		--source_module_name WayLookup
	@echo -n "[TIME LOG] mem_direct export END: " && date +%s.%3N
endif
	@echo -n "[TIME LOG] mem_direct gen START: " && date +%s.%3N
	@cd mem_direct && make -j$(NPROC) TOP_NAME=WayLookup
	@./mem_direct/export.bin > mem_direct/WayLookup_offset.yaml
	@rm -rf mem_direct_tmp
	@echo -n "[TIME LOG] mem_direct gen END: " && date +%s.%3N
endif
endif

release: compile
	@cp -r build/${TARGET} .
	@cp dut_base.hpp ${TARGET}/dut_base.hpp
	@cp mem_direct/WayLookup_offset.yaml ${TARGET}/WayLookup_offset.yaml 2>/dev/null|| true
	@make -f mk/${TLANG}.mk
	

ifeq ($(VERBOSE), OFF) # if VERBOSE is OFF
	@rm -rf build cmake cpp mk python java scala golang lua CMakeLists.txt dut_base.* 2>/dev/null|| true
	@rm -rf ${TARGET}.cpp filelist.f *.fst 2>/dev/null|| true
	@rm -rf mem_direct
	@mv ${TARGET}/*.v ${TARGET}/*.sv . 2>/dev/null|| true
	@cd ${TARGET} && make purge
ifeq ($(COVERAGE), OFF)
	@rm Makefile
	@rm *.v *.sv
endif
endif

coverage:
ifeq ($(COVERAGE), ON)
ifeq ($(SIMULATOR), verilator)
	@rm -rf coverage/
	@verilator_coverage -write-info coverage.info ./V${PROJECT}_coverage.dat
	@genhtml coverage.info --output-directory coverage
else
# TODO: add vcs?
	@echo $(SIMULATOR) TBD
endif
else
	@echo coverage is not on
endif

clean: 