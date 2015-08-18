@moduledoc """
--------------
TOWER OF HANOI
--------------

       |            |           |
      ---           |           |
    -------         |           |
  -----------       |           |
_______|____________|___________|________
       A            B           C

Move disks from A to C, on disk at a time. At any given time, never allow
a larger disk to be on top of a smaller disk.

"""

defmodule TowerOfHanoi do

  def move(1, source_pole, destination_pole, intermediate_pole) do
    IO.puts ["Move ", source_pole, " to ", destination_pole]
  end

  def move(no_of_disks, source_pole, destination_pole, intermediate_pole) do
    move(no_of_disks - 1, source_pole, intermediate_pole, destination_pole)
    IO.puts ["Move ", source_pole, " to ", destination_pole]
    move(no_of_disks - 1, intermediate_pole, destination_pole, source_pole)
  end

end
