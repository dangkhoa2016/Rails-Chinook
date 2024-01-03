class PlaylistsTracksController < ApplicationController
  before_action :set_playlists_track, only: [:show, :edit, :update, :destroy]

  # GET /playlists_tracks
  # GET /playlists_tracks.json
  def index
    @playlists_tracks = PlaylistsTrack.all
  end

  # GET /playlists_tracks/1
  # GET /playlists_tracks/1.json
  def show
  end

  # GET /playlists_tracks/new
  def new
    @playlists_track = PlaylistsTrack.new
  end

  # GET /playlists_tracks/1/edit
  def edit
  end

  # POST /playlists_tracks
  # POST /playlists_tracks.json
  def create
    @playlists_track = PlaylistsTrack.new(playlists_track_params)

    respond_to do |format|
      if @playlists_track.save
        format.html { redirect_to @playlists_track, notice: 'Playlists track was successfully created.' }
        format.json { render action: 'show', status: :created, location: @playlists_track }
      else
        format.html { render action: 'new' }
        format.json { render json: @playlists_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlists_tracks/1
  # PATCH/PUT /playlists_tracks/1.json
  def update
    respond_to do |format|
      if @playlists_track.update(playlists_track_params)
        format.html { redirect_to @playlists_track, notice: 'Playlists track was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @playlists_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlists_tracks/1
  # DELETE /playlists_tracks/1.json
  def destroy
    @playlists_track.destroy
    respond_to do |format|
      format.html { redirect_to playlists_tracks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlists_track
      @playlists_track = PlaylistsTrack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlists_track_params
      params.require(:playlists_track).permit(:playlist_id, :track_id)
    end
end
