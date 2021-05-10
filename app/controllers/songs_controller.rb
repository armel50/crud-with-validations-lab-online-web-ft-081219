<<<<<<< HEAD
class SongsController < ApplicationController
    def index 
        @songs = Song.all
    end

    def show 
        @song = Song.find(params[:id])
    end

    def edit 
        @song = Song.find(params[:id])
    end

    def new 
        @song = Song.new
    end

    def create 
        @song = Song.new(song_params)
        if @song.valid?
            @song.save 
            
            redirect_to song_path(@song) 
        else
            render "songs/new"
        end
    end

    def update 
     
        @song = Song.find(params[:id])
        @song.update(song_params)
       

        if @song.valid?
           
            redirect_to(@song)
        else
            render "songs/edit"
        end
    end

    def destroy 
        @song = Song.find(params[:id])
        @song.delete
        redirect_to songs_path
    end

    private 
    def song_params 
        params.require(:song).permit(:title,:genre,:artist_name, :release_year, :released)
    end
end
=======
class SongsController < ApplicationController 
  def show 
    @song = Song.find(params[:id])
  end
  
  def index 
   @songs =  Song.all

  end
  
  def new 
    @song = Song.new
  end
  
  def create 
    new_song = Song.create(params_form)
  end
  
  
  def edit 
       @song = Song.find(params[:id])
  end 
  
  def update 
  end
  
  private 
  def params_form 
    params.require(:song).permit(:title,:artist_name,:genre, :released, :release_year, :artist_name)
  end
end
>>>>>>> aa44ebe9eb9c1f258f410bc1ba02d2cbc2ce6b61
