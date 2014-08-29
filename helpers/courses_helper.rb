module CoursesHelper
  def current_course?
    !current_page.data.code.nil?
  end

  def current_course_data
    data.courses[current_page.data.code]
  end

  def course_print_page?
    page_classes.include?('print')
  end
end
