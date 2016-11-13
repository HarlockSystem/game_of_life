#include <stdlib.h>
#include <stdio.h>

#include "lifegame.h"




int main (int argc , char** argv)
{
  int i;
  int x, y;
  int g = lifegame_menu();
  if (g == 3)
    return EXIT_SUCCESS;
  
  if (g == 2)
    return EXIT_SUCCESS;
  
  if (g == 1)
    {
      int i = input_game_size();
      life_game_size(i, &x, &y);
    }

  fprintf(stderr,"x:%d|y:%d\n",x,y);
  lifegame L = lifegame_create(x ,y, '-','X' );
  hcharpix_draw_horline(L->cell, 5,0 , 2, 'X');
  hcharpix_draw_verline(L->cell, 20,0 , 2, 'X');

  hcharpix_draw_horline(L->cell, 10,37 , 39, 'X');
  hcharpix_draw_verline(L->cell, 8,17 , 19, 'X');
  
    lifegame_next_gen_til_N_or_same_gen(L, 20, 1);

  lifegame_save(L, "level1");
  lifegame_destroy(&L);
  
 
  return EXIT_SUCCESS;

  
}
