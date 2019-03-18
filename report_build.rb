require 'report_builder'


ReportBuilder.configure do |config|
  config.input_path = "results/JSON"
  config.html_report_path = "results/merged_report"
  config.color = "cyan"
  config.additional_info = { user: ENV['USER'] }
end

ReportBuilder.build_report