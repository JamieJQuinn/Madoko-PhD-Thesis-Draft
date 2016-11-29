FOLDERS=lare1d viscosity_investigation
SOURCES=$(addsuffix /main.mdk,$(FOLDERS))
HTML=$(addsuffix /out/main.html,$(FOLDERS))
PDF=$(addsuffix /out/main.pdf,$(FOLDERS))

all: allhtml

allhtml: $(HTML)

allpdf: $(PDF)

%/out/main.html: %/main.mdk
	cd $*; madoko main.mdk

%/out/main.pdf: %/main.mdk
	cd $*; madoko --pdf main.mdk
