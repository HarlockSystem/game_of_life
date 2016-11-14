CC = gcc
COPTS = -c -g -O3 -DDEBUG -W -Wall -pedantic
OBJS = ../tools0_50/ds_cell.o ../tools0_50/graph_core.o ../tools0_50/gll_Maths.o ../tools0_50/graph_algos.o ../tools0_50/tools.o ../tools0_50/jfile.o ../tools0_50/intarray.o ../tools0_50/array.o ../tools0_50/mempool.o ../tools0_50/dlist.o ../tools0_50/gll_buffer.o ../tools0_50/jstr.o ../tools0_50/btree.o ../tools0_50/ascii_regular_char.o ../tools0_50/stringarray.o ../tools0_50/charpix.o ../tools0_50/mfile.o ../tools0_50/hcharpix.o ../tools0_50/KVdatatrain.o ../tools0_50/himage.o lifegame.o

#ALL : test_graph make_unit_graphs cours219
#	echo "Compilation terminée"

game : $(OBJS) game.o
	$(CC) game.o $(OBJS) -o game -lm


#cours219 : $(OBJS) cours219.o
#	$(CC) cours219.o $(OBJS) -o cours219

#test_graph.exe : $(OBJS) test_graph.o 
#	$(CC) $(OBJS) test_graph.o -o test_graph.exe

#make_unit_graphs.exe : $(OBJS) make_unit_graphs.o
#	$(CC) $(OBJS) make_unit_graphs.o -o make_unit_graphs

game.o : game.c lifegame.h ../tools0_50/tools.h ../tools0_50/jstr.h ../tools0_50/intarray.h ../tools0_50/hcharpix.h ../tools0_50/mfile.h ../tools0_50/KVdatatrain.h
	$(CC) $(COPTS) game.c

lifegame.o :  lifegame.c lifegame.h ../tools0_50/tools.h ../tools0_50/jstr.h ../tools0_50/intarray.h ../tools0_50/hcharpix.h ../tools0_50/mfile.h ../tools0_50/KVdatatrain.h ../tools0_50/mfile.h
	$(CC) $(COPTS) lifegame.c

#cours219.o : cours219.c tools.h
#	$(CC) $(COPTS) cours219.c

#test_graph.o : test_graph.c ds_cell.h graph_core.h graph_algos.h tools.h jfile.h
#	$(CC) $(COPTS) test_graph.c

#make_unit_graphs.o : make_unit_graphs.c ds_cell.h graph_core.h graph_algos.h tools.h jfile.h
#	$(CC) $(COPTS) make_unit_graphs.c


../tools0_50/mfile.o : ../tools0_50/mfile.c ../tools0_50/mfile.h ../tools0_50/tools.h ../tools0_50/jstr.h
	$(CC) $(COPTS) ../tools0_50/mfile.c  -o ../tools0_50/mfile.o

../tools0_50/ds_cell.o : ../tools0_50/ds_cell.c ../tools0_50/ds_cell.h ../tools0_50/jfile.h ../tools0_50/tools.h
	$(CC) $(COPTS) ../tools0_50/ds_cell.c

../tools0_50/tools.o : ../tools0_50/tools.c ../tools0_50/tools.h
	$(CC) $(COPTS) ../tools0_50/tools.c  -o ../tools0_50/tools.o

#../tools0_50/graph_core.o : ../tools0_50/graph_core.c ../tools0_50/graph_core.h ../tools0_50/ds_cell.h ../tools0_50/tools.h
#	$(CC) $(COPTS) ../tools0_50/graph_core.c

#../tools0_50/graph_algos.o : ../tools0_50/graph_algos.c ../tools0_50/graph_algos.h ../tools0_50/graph_core.h ../tools0_50/ds_cell.h ../tools0_50/tools.h
#	$(CC) $(COPTS) ../tools0_50/graph_algos.c  -o ../tools0_50/graph_algos.o

../tools0_50/jfile.o : ../tools0_50/jfile.c ../tools0_50/jfile.h ../tools0_50/jstr.h ../tools0_50/tools.h ../tools0_50/gll_buffer.h
	$(CC) $(COPTS) ../tools0_50/jfile.c -o ../tools0_50/jfile.o

../tools0_50/jstr.o : ../tools0_50/jstr.c ../tools0_50/jstr.h ../tools0_50/tools.h ../tools0_50/intarray.h ../tools0_50/jfile.h
	$(CC) $(COPTS) ../tools0_50/jstr.c -o ../tools0_50/jstr.o

../tools0_50/gll_buffer.o : ../tools0_50/gll_buffer.c ../tools0_50/gll_buffer.h ../tools0_50/tools.h ../tools0_50/ascii_regular_char.h
	$(CC) $(COPTS) ../tools0_50/gll_buffer.c -o ../tools0_50/gll_buffer.o

../tools0_50/ascii_regular_char.o : ../tools0_50/ascii_regular_char.c ../tools0_50/ascii_regular_char.h ../tools0_50/tools.h
	$(CC) $(COPTS) ../tools0_50/ascii_regular_char.c -o ../tools0_50/ascii_regular_char.o

../tools0_50/intarray.o : ../tools0_50/intarray.c ../tools0_50/intarray.h ../tools0_50/tools.h ../tools0_50/btree.h
	$(CC) $(COPTS) ../tools0_50/intarray.c -o ../tools0_50/intarray.o

../tools0_50/btree.o : ../tools0_50/btree.c ../tools0_50/btree.h ../tools0_50/mempool.h ../tools0_50/tools.h ../tools0_50/dlist.h
	$(CC) $(COPTS) ../tools0_50/btree.c -o ../tools0_50/btree.o

../tools0_50/gll_Maths.o : ../tools0_50/gll_Maths.c ../tools0_50/gll_Maths.h ../tools0_50/tools.h
	$(CC) $(COPTS) ../tools0_50/gll_Maths.c -o ../tools0_50/gll_Maths.o

../tools0_50/mempool.o : ../tools0_50/mempool.c ../tools0_50/mempool.h ../tools0_50/array.h
	$(CC) $(COPTS) ../tools0_50/mempool.c -o ../tools0_50/mempool.o

../tools0_50/array.o : ../tools0_50/array.c ../tools0_50/array.h ../tools0_50/tools.h
	$(CC) $(COPTS) ../tools0_50/array.c -o ../tools0_50/array.o

../tools0_50/dlist.o : ../tools0_50/dlist.c ../tools0_50/dlist.h ../tools0_50/tools.h ../tools0_50/array.h ../tools0_50/mempool.h
	$(CC) $(COPTS) ../tools0_50/dlist.c -o ../tools0_50/dlist.o

../tools0_50/hcharpix.o : ../tools0_50/hcharpix.c ../tools0_50/hcharpix.h ../tools0_50/jstr.h
	$(CC) $(COPTS) ../tools0_50/hcharpix.c -o ../tools0_50/hcharpix.o

../tools0_50/himage.o : ../tools0_50/himage.c ../tools0_50/himage.h ../tools0_50/tools.h
	$(CC) $(COPTS) ../tools0_50/himage.c -o ../tools0_50/himage.o

../tools0_50/charpix.o : ../tools0_50/charpix.c ../tools0_50/charpix.h ../tools0_50/jstr.h
	$(CC) $(COPTS) ../tools0_50/charpix.c -o ../tools0_50/charpix.o

../tools0_50/KVdatatrain.o: ../tools0_50/KVdatatrain.c ../tools0_50/KVdatatrain.h ../tools0_50/tools.h ../tools0_50/stringarray.h ../tools0_50/mfile.h ../tools0_50/jstr.h
	$(CC) $(COPTS) ../tools0_50/KVdatatrain.c -o ../tools0_50/KVdatatrain.o

clean :
	rm -f *.o *~ \#*\# *.stackdump $(ALL)
