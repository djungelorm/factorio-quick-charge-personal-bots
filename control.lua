script.on_nth_tick(
   30,
   function (e)
      for index, player in pairs(game.connected_players) do
         if player.character then
            inventory = player.get_inventory(defines.inventory.player_armor)
            for i=1, #inventory do
               grid = inventory[i].grid
               if grid ~= nil then
                  for x=1, grid.width do
                     for y=1, grid.height do
                        item = grid.get({x, y})
                        if item ~= nil and item.type == 'roboport-equipment' then
                           item.energy = item.max_energy
                        end
                     end
                  end
               end
            end
         end
      end
   end
)
