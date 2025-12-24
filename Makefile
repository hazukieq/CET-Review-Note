.PHONY: all clean help
#xelatex 的执行路径
#如果你设置了环境变量，则不需要更改
TEXP=xelatex
TEX=$(TEXP) -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape


all: 英语备考心得.tex
	$(TEX) $<
	@echo "编译完成，请用阅读器打开PDF文件"

# 清理编译生成的文件
clean:
	rm -f *.toc *.csv *.aux *.log *.txss2 *.out *.synctex.gz 2>/dev/null
	@echo "编译产物清理完毕"

# 帮助信息
help:
	@echo "使用说明:"
	@echo "  make             编译英语备考文件"
	@echo "  make all         等同于 'make'"
	@echo "  make clean       清理编译无关文件"
	@echo "  make help        显示此帮助信息"
