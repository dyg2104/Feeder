class SavedForLatersController < ApplicationController
  def create
    saved_for_later = current_user.saved_for_laters.new()
    saved_for_later.article_id = saved_for_later_params[:article_id]
    saved_for_later.save!

    render json: {success: true}
  end

  def destroy
    saved_for_later = SavedForLater.where("user_id = ? AND article_id = ?",
                                          current_user.id,
                                          saved_for_later_params[:article_id]).first
    saved_for_later.destroy

    render json: {success: true}
  end

  private
  def saved_for_later_params
    params.require(:saved_for_later).permit(:article_id)
  end
end
