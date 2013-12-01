module Morpher

  module NodeHelpers

    # Build node
    #
    # @param [Symbol] type
    #
    # @return [Parser::AST::Node]
    #
    # @api private
    #
    def s(type, *children)
      Node.new(type, children)
    end
    module_function :s

  end # NodeHelpers
end # Morpher