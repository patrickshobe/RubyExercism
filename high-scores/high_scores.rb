class HighScores
  attr_reader :scores;
  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.sort.last
  end

  def personal_top
    @scores.sort.reverse.first(3)
  end

  def report
    build_message
  end

  def score_difference
    personal_top.first - latest
  end

  def build_message
    base = "Your latest score was #{latest}. "
    if score_difference == 0
      message = "That's your personal best!"
    else
      message = "That's #{score_difference} short of your personal best!"
    end
    return base + message
  end

end
