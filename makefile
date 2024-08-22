CC = g++
CFLAGS = -fdiagnostics-color=always -g
SRCDIR = sources
BUILDDIR = build/Debug
TARGET = outDebug

all: $(TARGET)

$(TARGET): $(BUILDDIR)/main.o $(BUILDDIR)/Administrador.o $(BUILDDIR)/Arista.o $(BUILDDIR)/Listas.o $(BUILDDIR)/Pagina.o $(BUILDDIR)/Router.o $(BUILDDIR)/Terminal.o
	$(CC) $(CFLAGS) $^ -o $(BUILDDIR)/$@

$(BUILDDIR)/main.o: $(SRCDIR)/main.cpp
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILDDIR)/Administrador.o: $(SRCDIR)/Administrador.cpp
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILDDIR)/Arista.o: $(SRCDIR)/Arista.cpp
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILDDIR)/Listas.o: $(SRCDIR)/Listas.cpp
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILDDIR)/Pagina.o: $(SRCDIR)/Pagina.cpp
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILDDIR)/Router.o: $(SRCDIR)/Router.cpp
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILDDIR)/Terminal.o: $(SRCDIR)/Terminal.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(BUILDDIR)/*.o $(BUILDDIR)/$(TARGET)
