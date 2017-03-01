class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rounds = Round.all
  end

  def show
    @rounds = Round.all
    @monthly_rounds = current_user.rounds.order('created_at DESC').group_by { |i| i.month }
    @yearly_rounds = current_user.rounds.group_by { |i| i.year }
    #@yearly_rounds.map { |k, v| [k, v.group_by(&:month)] }.to_h
    # @yearly_rounds: {2017 => [#<Round>, #<Round>]}
    #[[k, v], [k, v]]
    #@yearly_rounds.map { |k, v| [k, v.group_by(&:month)] }.to_h
    # {2017 => {"January" => [#<Round>, <#Round>], "February"=> []}}
    #@rounds = Round.by_year(params[:year])
  end
end
