LN = ln -s
DESTDIR = $(HOME)

link: dot.vim dot.vimrc
	$(foreach file, $^, $(RM) $(DESTDIR)/$(subst dot,,$(file));)
	$(foreach file, $^, $(LN) $(CURDIR)/$(file) $(DESTDIR)/$(subst dot,,$(file));)

