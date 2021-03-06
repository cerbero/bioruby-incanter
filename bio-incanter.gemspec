# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bio-incanter"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matteo Picciolini"]
  s.date = "2012-08-06"
  s.description = "A Jruby wrapper to Incanter lib"
  s.email = "matteo.picciolini@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bio-incanter.gemspec",
    "doc/AreaChart.html",
    "doc/BarChart.html",
    "doc/BlandAltman.html",
    "doc/BoxPlot.html",
    "doc/FunctionPlot.html",
    "doc/HeatMap.html",
    "doc/Histogram.html",
    "doc/LICENSE_txt.html",
    "doc/LineChart.html",
    "doc/Object.html",
    "doc/PieChart.html",
    "doc/README_rdoc.html",
    "doc/ScatterPlot.html",
    "doc/TimeChart.html",
    "doc/TracePlot.html",
    "doc/XyPlot.html",
    "doc/created.rid",
    "doc/images/add.png",
    "doc/images/brick.png",
    "doc/images/brick_link.png",
    "doc/images/bug.png",
    "doc/images/bullet_black.png",
    "doc/images/bullet_toggle_minus.png",
    "doc/images/bullet_toggle_plus.png",
    "doc/images/date.png",
    "doc/images/delete.png",
    "doc/images/find.png",
    "doc/images/loadingAnimation.gif",
    "doc/images/macFFBgHack.png",
    "doc/images/package.png",
    "doc/images/page_green.png",
    "doc/images/page_white_text.png",
    "doc/images/page_white_width.png",
    "doc/images/plugin.png",
    "doc/images/ruby.png",
    "doc/images/tag_blue.png",
    "doc/images/tag_green.png",
    "doc/images/transparent.png",
    "doc/images/wrench.png",
    "doc/images/wrench_orange.png",
    "doc/images/zoom.png",
    "doc/index.html",
    "doc/js/darkfish.js",
    "doc/js/jquery.js",
    "doc/js/navigation.js",
    "doc/js/search.js",
    "doc/js/search_index.js",
    "doc/js/searcher.js",
    "doc/rdoc.css",
    "doc/table_of_contents.html",
    "lib/area_chart/area_chart.rb",
    "lib/bar_chart/bar_chart.rb",
    "lib/bio-incanter.rb",
    "lib/bland_altman/bland_altman.rb",
    "lib/box_plot/box_plot.rb",
    "lib/function_plot/function_plot.rb",
    "lib/histogram/histogram.rb",
    "lib/java/clocomics-1.0.0-standalone.jar",
    "lib/line_chart/line_chart.rb",
    "lib/pie_chart/pie_chart.rb",
    "lib/qq_plot/qq_plot.rb",
    "lib/scatter_plot/scatter_plot.rb",
    "lib/time_chart/time_chart.rb",
    "lib/trace_plot/trace_plot.rb",
    "lib/xy_plot/xy_plot.rb",
    "spec/bar_chart_spec.rb",
    "spec/bland_altman_spec.rb",
    "spec/box_plot_spec.rb",
    "spec/function_plot_spec.rb",
    "spec/histogram_spec.rb",
    "spec/line_chart_spec.rb",
    "spec/pie_chart_spec.rb",
    "spec/qq_plot_spec.rb",
    "spec/scatter_plot_spec.rb",
    "spec/spec_helper.rb",
    "spec/time_chart_spec.rb",
    "spec/trace_plot_spec.rb",
    "spec/xy_plot_spec.rb"
  ]
  s.homepage = "https://github.com/cerbero/bioruby-incanter"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Build Graph with Jruby"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jruby-openssl>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["< 1.1.5"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
    else
      s.add_dependency(%q<jruby-openssl>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["< 1.1.5"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    end
  else
    s.add_dependency(%q<jruby-openssl>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["< 1.1.5"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
  end
end

