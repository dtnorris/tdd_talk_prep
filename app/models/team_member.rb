class TeamMember
  attr_accessor :team

  def initialize(team = Team.new)
    @team = team
  end

  def email_member?
    team.active.paid.unscheduled
  end
end


