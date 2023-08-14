class PagesController < ApplicationController
  def about
    # if necessary do stuff (getting data from DB)
  end

  def contact
    # if necessary got get some user data from DB
    @members = %w[Jorge James Hugo Scooter Dani Diogo Orion]
    # intercept the query params
    # use the value attached to the member key
    return unless params[:member].present?

    # filter the @members array with that keyword
    @members = @members.select { |member| member.include?(params[:member]) }
  end

  def home
    # do stuff
  end
end
