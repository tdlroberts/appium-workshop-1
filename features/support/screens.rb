class Screens
  attr_accessor :driver
  def initialize(driver)
    @driver = driver
  end
  def screen_intro
    @screen_intro_welcome ||= ScreenIntro.new @driver
    @screen_intro_welcome
  end

  def screen_extra_filters
    @screen_extra_filters ||= ScreenExtraFilters.new @driver
    @screen_extra_filters
  end

  def screen_create_filter
    @screen_create_filter ||= ScreenCreateFilter.new @driver
    @screen_create_filter
  end

  def screen_select_sub_category
    @screen_select_sub_category ||= ScreenSelectSubCategory.new @driver
    @screen_select_sub_category
  end

  def screen_set_filter_parameters
    @screen_set_filter_parameters ||= ScreenSetFilterParameters.new @driver
    @screen_set_filter_parameters
  end

  def screen_filter_parameters
    @screen_filter_parameters ||= ScreenFilterParameters.new @driver
    @screen_filter_parameters
  end

  def screen_notification
    @screen_notification ||= ScreenNotification.new @driver
    @screen_notification
  end

  def screen_notification_menu
    @screen_notification_menu ||= ScreenNotificationMenu.new @driver
    @screen_notification_menu
  end
end
