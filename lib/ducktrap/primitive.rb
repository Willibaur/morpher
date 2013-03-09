class Ducktrap

  class Primitive < self
    include Concord.new(:primitive)

    register :primitive

    # Run ducktrap in input
    #
    # @param [Object] input
    #
    # @return [Result]
    #
    # @api private
    #
    def run(input)
      unless input.kind_of?(primitive)
        return Result::Invalid.new(self, input)
      end

      Result::Static.new(self, input, input)
    end

    # Return inverse ducktrap
    #
    # @return [Ducktrap]
    #
    # @api private
    #
    def inverse; self end

  private

    # Perfrom pretty dump
    #
    # @param [Formatter] output
    #
    # @return [undefined]
    #
    # @api private
    #
    def dump(output)
      output.puts(self.class.name)
      output = output.indent
      output.puts("primitive: #{primitive}")
      self
    end
    
    # Build ducktrap
    #
    # @return [Ducktrap]
    #
    # @api private
    #
    def self.build(*args)
      new(*args)
    end
  end
end
