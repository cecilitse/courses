require 'open3'
require 'shellwords'

module Courses
  class Generator
    attr_reader :course_name, :pdf_directory, :template_url

    def initialize(course_name, base_url, pdf_directory)
      @course_name    = course_name
      @pdf_directory  = pdf_directory
      @template_url   = "#{base_url}/programs/print/#{course_name}.html"
    end

    def process
      command         = build_command
      _output, status = Open3.capture2(command)

      status.success?
    end

  private

    def build_command
      executable = 'weasyprint'
      arguremnts = [
        executable,
        '-e',
        'utf8',
        '-m',
        'screen',
        self.template_url,
        pdf_path
      ]

      return Shellwords.join(arguremnts)
    end

    def pdf_path
      filename = "#{self.course_name}.pdf"
      return File.join(self.pdf_directory, filename)
    end
  end
end
