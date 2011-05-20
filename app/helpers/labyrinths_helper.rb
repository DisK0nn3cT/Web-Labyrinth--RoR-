module LabyrinthsHelper
  def make_labyrinth(word,doorodds=9)
    if(rand(11)>doorodds)
      link_to word, sub_labyrinths_path(rand(999999)), :rel => "nofollow"
    else
      word + " "
    end
  end
end
