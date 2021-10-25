all: out/add.bin out/test.bin

CLANG_FLAGS = -nostdlib -mno-relax --target=riscv32 -march=rv32i -T linker.ld

out/%.bin: out/%.elf
	llvm-objcopy -O binary $< $@

out/add.elf: examples/add.s
	@mkdir -p $(@D)
	clang $(CLANG_FLAGS) -o $@ $<

out/test.elf: start.s examples/test.c
	@mkdir -p $(@D)
	clang -O1 $(CLANG_FLAGS) -o $@ $^

.PHONY: clean
clean:
	rm -rf out
