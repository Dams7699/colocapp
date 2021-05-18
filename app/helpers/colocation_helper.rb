module ColocationHelper
  def goals_percentage(colocation, user)
    common_goals = colocation.goals & user.goals
    return (common_goals.length.fdiv(user.goals.length) * 100).round
  end
end
