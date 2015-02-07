module HomeHelper

  def generate_smiley_layout
    case @sentiment
    when (0..32)
      fa_icon('frown-o')
    when (33..66)
      fa_icon('meh-o')
    when (67..100)
      fa_icon('smile-o')
    end
  end

  def generate_star_layout
    return if @sentiment.blank? || @sentiment.is_a?(String)
    content_tag(:span) do
      (0...whole_stars).map { fa_icon('star') }.join.html_safe +
      (half_star ? fa_icon('star-half-o') : '').html_safe +
      (0...empty_stars).map { fa_icon('star-o') }.join.html_safe
    end
  end

  def whole_stars
    (@sentiment / 20.0).truncate
  end

  def half_star
    @sentiment % 20.0 >= 10.0
  end

  def empty_stars
    half_star ? (4 - whole_stars) : (5 - whole_stars)
  end

end
