class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @assigned = current_user.tickets.tagged_with "resolved", :exclude => true
    @related = Ticket.tagged_with("resolved", :exclude => true).tagged_with current_user.tag_list
  end
end
