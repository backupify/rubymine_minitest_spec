module Minitest

  def self.plugin_rubymine_minitest_spec_init(options)
    if options[:filter]
      if options[:filter] =~ /\/\\Atest\\: (.*) should (.*)\\\.\//
        context_filter = "(\\w+::)*#{$1}"
        should_filter = $2
        context_filter = context_filter.gsub(' ', '((::)| )')
        options[:filter] = "/\\A#{context_filter}(Test)?#test_\\d+_#{should_filter}\\Z/"
      end
    end
  end

end
