#include <stdlib.h>
#include <stdio.h>

#include "lifegame.h"




int main (int argc , char** argv)
{
 menu:
  fprintf(stdout,"");
  
  int g = lifegame_menu();
  if (g == 3)
    return EXIT_SUCCESS;
  
  if (g == 2)
    {
     
      lifegame L = lifegame_load("level2");
      if (L == NULL)
	fprintf(stderr, "load error\n");

     
      if (L != NULL)
	{
	  fprintf(stderr,"load done\n");
	  lifegame_next_gen_til_N_or_same_gen(L, 10, 1);
	  lifegame_destroy(&L);
	}
      
      goto menu;
    }
  
  if (g == 1)
    {
      int x,y;
      int i = input_game_size();
      life_game_size(i, &x, &y);
      lifegame L = lifegame_create(x ,y, '-','X' );
      hcharpix_draw_horline(L->cell, 5,0 , 2, 'X');
      hcharpix_draw_verline(L->cell, 20,0 , 2, 'X');
      hcharpix_draw_horline(L->cell, 10,37 , 39, 'X');
      hcharpix_draw_verline(L->cell, 8,17 , 19, 'X');
      lifegame_next_gen_til_N_or_same_gen(L, 9, 1);
      if(L != NULL)
	{
	  lifegame_save(L, "level1");
	  lifegame_destroy(&L);
	}
      goto menu;
    }
  
  
   return EXIT_SUCCESS;

}
