class BookmarksController < ApplicationController

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list_id = params[:list_id]
    @bookmark.save
    redirect_to list_path(@bookmark.list_id)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(params[:id])
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end
