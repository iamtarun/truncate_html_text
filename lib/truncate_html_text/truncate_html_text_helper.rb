# Contains code for html text truncate helper

module TruncateHtmlText
	def truncate_html_text_tag(*args, &block)
    options = insert_truncate_class(args.extract_options!)
    args << options
    content_tag(*args, &block)
  end

  def insert_truncate_class(options)
    class_name = "truncate"
    if options.key?(:class)
      options[:class] += " #{class_name}"
    elsif options.key?('class')
      options['class'] += " #{class_name}"
    else
      options[:class] = class_name
    end
    if options.key?(:data)
			data=Hash[options[:data].map {|k, v| ["data-"<<k.to_s, v] }]
			options.delete(:data)
			options.merge!(data)
		elsif options.key?('data')
			data=Hash[options["data"].map {|k, v| ["data-"<<k.to_s, v] }]
			options.delete("data")
			options.merge!(data)
		end
    options
  end
end
