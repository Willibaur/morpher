class Ducktrap
  # Abstract ducktrap that delegates a single ducktrap
  module Unary 

    def run(input)
      result_klass.new(self, input, operand)
    end

    # Return ducktrap
    #
    # @return [Ducktrap]
    #
    # @api private
    #
    attr_reader :operand

  private

    # Initialize object
    #
    # @param [Ducktrap] operand
    #
    # @api private
    #
    def initialize(operand)
      @operand = operand
      super()
    end

    class Result < Ducktrap::Result
      attr_reader :operand

      def initialize(context, input, operand)
        @operand = operand
        super(context, input)
      end
    end

  end
end