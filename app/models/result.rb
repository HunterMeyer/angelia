class Result

  def initialize(username)
    @username = username
  end

  def empty(objects)
    ["Sorry, no #{objects} found."]
  end

  def mentions
    @mentions ||= $twitter.search(@username)
  end

  def users
    @users ||= mentions.map { |m| m.user }
  end

  def get_mentions
    mentions.map { |m| m.text }.presence || empty('mentions')
  end

  # def get_users
    # This will group by name and give a score for frequency of tweets
    # Hash[users.group_by { |u| u.screen_name }.map { |name, group| [name, group.length] }].presence || empty('users')
  # end

  def get_screen_names
    get_user_data(:screen_name, 'users')
  end

  def get_locations
    get_user_data(:location, 'locations')
  end

  def get_user_data(attribute, error_msg)
    users.map { |u| u.send(attribute).to_s }.delete_if(&:blank?).uniq.presence || empty(error_msg)
  end


end
