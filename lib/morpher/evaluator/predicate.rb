module Morpher
  class Evaluator
    # Abstract namespace class for predicate evaluators
    class Predicate < self

      # Return inverse evaluator
      #
      # This is a very naive implementation.
      # Subclasses can do a more elaborated choice.
      #
      # @return [Evaluator]
      #
      # @api private
      #
      def inverse
        Unary::Negation.new(self)
      end

    end # Predicate
  end # Evaluator
end # Morpher
