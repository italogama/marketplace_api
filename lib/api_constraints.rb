class ApiConstraints
  attr_reader :options

  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end
end